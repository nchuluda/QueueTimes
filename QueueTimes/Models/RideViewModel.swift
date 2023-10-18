//
//  RideViewModel.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import Foundation

@MainActor
class RideViewModel: ObservableObject {
    var parkId: Int
    init(parkId: Int) {
        self.parkId = parkId
    }
    
    @Published var landsArray: [Land] = []
    @Published var ridesArray: [Ride] = []
    var tempArray: [Land] = []
    
    func getData() async {
            print("We are accessing https://queue-times.com/parks/\(parkId)/queue_times.json")
        
        guard let url = URL(string: "https://queue-times.com/parks/\(parkId)/queue_times.json") else {
            print("ERROR: Could not create a URL from https://queue-times.com/parks/\(parkId)/queue_times.json")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let top = try? JSONDecoder().decode(Top.self, from: data) else {
                print("ERROR: Could not decode JSON data")
                return
            }
            self.ridesArray = top.rides
            self.landsArray = top.lands
            print("JSON returned, ride and land arrays created")
        } catch {
            print("ERROR: Could not create a URL from the URL string")
        }
    }
}
