//
//  Park.swift
//  QueueTimes
//
//  Created by Nathan on 10/15/23.
//

import Foundation

struct Park: Decodable, Hashable {
    let id: Int
    let name, country, latitude, longitude: String
}
