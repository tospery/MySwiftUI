//
//  RootView.swift
//  SharedDemo
//
//  Created by 杨建祥 on 2024/11/27.
//

import SwiftUI
import ComposableArchitecture

struct RootView: View {
    
    @Perception.Bindable var store: StoreOf<RootReducer>
    
    var body: some View {
        WithPerceptionTracking {
            NavigationStack(path: $store.scope(state: \.path, action: \.path)) {
                Button("Go to Detail") {
                    store.send(.toDetail)
                }
            } destination: { store in
                switch store.case {
                case let .detail(store):
                    DetailView(store: store)
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .onChange(of: store.stats) { stats in
                print("stats changed: \(stats.count)")
            }
        }
    }
    
}
