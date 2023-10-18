//
//  Ride.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import Foundation

struct Ride: Decodable, Hashable, Identifiable {
    let id: Int
    let name: String
    let isOpen: Bool
    let waitTime: Int
//    let lastUpdated: Date

    enum CodingKeys: String, CodingKey {
        case id, name
        case isOpen = "is_open"
        case waitTime = "wait_time"
//        case lastUpdated = "last_updated"
    }
}
