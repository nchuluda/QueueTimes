//
//  Chain.swift
//  QueueTimes
//
//  Created by Nathan on 10/15/23.
//

import Foundation

struct Chain: Codable, Hashable {
    let id: Int
    let name: String
    let parks: [Park]
}
