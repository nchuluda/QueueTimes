//
//  Land.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import Foundation

struct Land: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    var rides: [Ride]
}
