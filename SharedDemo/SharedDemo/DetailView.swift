//
//  DetailView.swift
//  SharedDemo
//
//  Created by 杨建祥 on 2024/11/27.
//

import SwiftUI
import ComposableArchitecture

struct DetailView: View {
    @Perception.Bindable var store: StoreOf<DetailReducer>
    
    var body: some View {
        VStack {
            Button("change shared") {
                store.send(.change)
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}
