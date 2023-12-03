////
////  RideStore.swift
////  QueueTimes
////
////  Created by Nathan on 12/2/23.
////

import Foundation

@MainActor
class RideStore: ObservableObject {
    var parkId: Int
    init(parkId: Int) {
        self.parkId = parkId
    }
    
    var jsonSaved = false

    @Published var top = Top(lands: [], rides: [])
    
    func refresh(_ parkId: Int) async throws {
        await jsonSaved ? try? loadLocalData(parkId) : try? fetchJson()
    }
    
    func fetchJson() async throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        print("We are accessing https://queue-times.com/parks/\(parkId)/queue_times.json")
        
        guard let url = URL(string: "https://queue-times.com/parks/\(parkId)/queue_times.json") else {
            print("ERROR: Could not create a URL from https://queue-times.com/parks/\(parkId)/queue_times.json")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let top = try? decoder.decode(Top.self, from: data) else {
                print("ERROR: Could not decode JSON data")
                return
            }
            
            self.top = top
            
            print("JSON returned, ride and land arrays created")
        } catch {
            print("ERROR: Could not create a URL from the URL string")
        }
        
        do {
            try await self.save(top, parkId)
            self.jsonSaved = true
        } catch {
            print("ERROR: Could not save data locally")
        }
    }
    
    private static func fileURL(_ parkId: Int) throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("top-\(parkId).data")
    }
    
    func save(_ top: Top, _ parkId: Int) async throws {
        print("saving \(parkId)")
        let task = Task {
            let data = try JSONEncoder().encode(top)
            let outfile = try Self.fileURL(parkId)
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
    
    func loadLocalData(_ parkId: Int) async throws {
        print("loading \(parkId)")
        let task = Task<Top, Error> {
            
            let fileURL = try Self.fileURL(parkId)
            print(fileURL.absoluteString)
            guard let data = try? Data(contentsOf: fileURL) else {
                return Top(lands: [], rides: [])
            }
            let top = try JSONDecoder().decode(Top.self, from: data)
            return top
        }
        let top = try await task.value
        self.top = top
    }
    
    
}
