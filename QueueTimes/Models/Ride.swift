//
//  Ride.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import Foundation

struct Ride: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let isOpen: Bool
    let waitTime: Int
    let lastUpdated: Date
    var land: String = ""
    var lastUpdatedAgo: String {
        RelativeDateTimeFormatter().localizedString(for: lastUpdated, relativeTo: Date())
    }

    enum CodingKeys: String, CodingKey {
        case id, name
        case isOpen = "is_open"
        case waitTime = "wait_time"
        case lastUpdated = "last_updated"
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.isOpen = try container.decode(Bool.self, forKey: .isOpen)
        self.waitTime = try container.decode(Int.self, forKey: .waitTime)
        let isoDate = try container.decode(String.self, forKey: .lastUpdated)
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        self.lastUpdated = formatter.date(from: isoDate)!
    }
//    func update(from rideUpdate: RideUpdate) {
//        self.waitTime = rideUpdate.waitTime
//        ...
//    }
}


//struct RideUpdate {
//    let waitTime: Int
//    let isOpen: Bool
//    let lastUpdated: Date
//}
//
//JSONDecoder().decode([RideUpdate], from: data)
