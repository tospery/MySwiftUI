//
//  DetailReducer.swift
//  SharedDemo
//
//  Created by 杨建祥 on 2024/11/27.
//

import Foundation
import ComposableArchitecture

@Reducer
struct DetailReducer {
    @ObservableState
    struct State: Equatable {
        @Shared(.stats) var stats = Stats()
    }
    
    enum Action {
        case change
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .change:
                var myStats = state.stats
                myStats.count = 1
                state.stats = myStats
                return .none
            }
        }
    }
    
}
