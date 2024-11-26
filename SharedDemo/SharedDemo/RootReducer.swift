//
//  RootReducer.swift
//  SharedDemo
//
//  Created by 杨建祥 on 2024/11/27.
//

import Foundation
import ComposableArchitecture

@Reducer
struct RootReducer {
    
    @Reducer(state: .equatable)
    enum Path {
      case detail(DetailReducer)
    }
    
    @ObservableState
    struct State: Equatable {
        var path = StackState<Path.State>()
        @Shared(.stats) var stats = Stats()
    }
    
    enum Action {
        case path(StackActionOf<Path>)
        case toDetail
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .toDetail:
                state.path.append(.detail(.init()))
                return .none
            default:
                return .none
            }
        }
        .forEach(\.path, action: \.path)
    }
        
}
