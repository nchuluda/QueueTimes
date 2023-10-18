//
//  Land.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import Foundation

struct Top: Decodable {
    let lands: [Land]
    let rides: [Ride]
}

struct Land: Decodable, Hashable, Identifiable {
    let id: Int
    let name: String
    let rides: [Ride]
}
