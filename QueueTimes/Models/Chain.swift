//
//  Chain.swift
//  QueueTimes
//
//  Created by Nathan on 10/15/23.
//

import Foundation

struct Chain: Decodable, Hashable {
    let id: Int
    let name: String
    let parks: [Park]
}
