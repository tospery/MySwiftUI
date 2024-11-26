//
//  SharedDemoApp.swift
//  SharedDemo
//
//  Created by 杨建祥 on 2024/11/27.
//

import SwiftUI
import ComposableArchitecture

@main
struct SharedDemoApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(store: Store(initialState: RootReducer.State.init(), reducer: {
                RootReducer()
            }))
        }
    }
}
