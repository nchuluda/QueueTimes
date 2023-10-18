//
//  ChainViewModel.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import Foundation

@MainActor
class ChainViewModel: ObservableObject {
    var urlString = "https://queue-times.com/parks.json"
    @Published var chainsArray: [Chain] = []

    func getData() async {
        print("We are accessing \(urlString)")
        
        guard let url = URL(string: urlString) else {
            print("ERROR: Could not create a URL from \(urlString)")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let chains = try? JSONDecoder().decode([Chain].self, from: data) else {
                print("ERROR: Could not decode JSON data")
                return
            }
            
            self.chainsArray = chains
            print("JSON returned")
        } catch {
            print("ERROR: Could not create a URL from \(urlString)")
        }
    }
}
