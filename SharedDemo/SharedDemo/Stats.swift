//
//  Stats.swift
//  SharedDemo
//
//  Created by 杨建祥 on 2024/11/27.
//

import Foundation
import ComposableArchitecture

struct Stats: Codable, Equatable {
    var count = 0
}

extension PersistenceReaderKey where Self == InMemoryKey<Stats> {
    static var stats: Self { inMemory("stats") }
}
