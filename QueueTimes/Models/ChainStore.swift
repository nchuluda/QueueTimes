//
//  ChainStore.swift
//  QueueTimes
//
//  Created by Nathan on 11/28/23.
//

import Foundation

//let tom = Person(name: "Tom")
//
//Person.numberOfPeople
//tom.name
//
//struct Person {
//    static var numberOfPeople = 0
//    var name: String
//    init(name: String) {
//        self.name = name
//        Self.numberOfPeople += 1
//    }
//}

@MainActor
class ChainStore: ObservableObject {
    
    enum ChainStoreError: Error { // eventually make this conform to LocalizedError
        case couldNotMakeURL, codingFailure
    }
    
    var jsonSaved = false
    var urlString = "https://queue-times.com/parks.json"
    @Published var chains: [Chain] = []
    
    func refresh() async {
        await jsonSaved ? try? loadLocalData() : try? fetchJson()
    }

    func fetchJson() async throws {
        print("fetchJson()")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        print("We are accessing \(urlString)")
        
        guard let url = URL(string: urlString) else {
            print("ERROR: Could not create a URL from \(urlString)")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let chains = try? decoder.decode([Chain].self, from: data) else {
                print("ERROR: Could not decode JSON data")
                return
            }
            
            self.chains = chains
            print("JSON returned")
        } catch {
            print("ERROR: Could not create a URL from \(urlString)")
        }
        
        do {
            try await self.save(chains)
            self.jsonSaved = true
        } catch {
            print("ERROR: Could not save data locally")
        }
        
    }
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("chains.data")
    }
    
    func loadLocalData() async throws {
        print("load")
        let task = Task<[Chain], Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return []
            }
            let chains = try JSONDecoder().decode([Chain].self, from: data)
            return chains
        }
        let chains = try await task.value
        self.chains = chains
    }
    
    func save(_ chains: [Chain]) async throws {
        print("save")
        let task = Task {
            let data = try JSONEncoder().encode(chains)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
}
