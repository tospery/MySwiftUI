//
//  MySwiftUIKitListsReorderableForEachScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsReorderableForEachScreen: View {

    @State
    private var items = (1...100).map { GridData(id: $0) }
    
    @State
    private var active: GridData?
    
    private struct GridData: Identifiable, Equatable {
        let id: Int
    }
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                LazyVGrid(columns: .adaptive(minimum: 100, maximum: 150)) {
                    ReorderableForEach(items, active: $active) { item in
                        shape
                            .fill(.thinMaterial)
                            .frame(height: 100)
                            .overlay(Text("\(item.id)"))
                            .contentShape(.dragPreview, shape)
                    } preview: { item in
                        shape
                            .frame(width: 200, height: 200)
                            .overlay(Text("\(item.id)"))
                            .contentShape(.dragPreview, shape)
                    } moveAction: { from, to in
                        items.move(fromOffsets: from, toOffset: to)
                    }
                }
            }.padding()
        }
        #if os(iOS)
        .background(Color.blue)
        .scrollContentBackground(.hidden)
        #else
        .background(Color.blue)
        #endif
        .reorderableForEachContainer(active: $active)
        .navigationTitle("ReorderableForEach")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var shape: some Shape {
        RoundedRectangle(cornerRadius: 20)
    }
    
}
