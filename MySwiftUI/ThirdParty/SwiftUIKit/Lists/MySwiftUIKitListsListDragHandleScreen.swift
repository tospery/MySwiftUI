//
//  MySwiftUIKitListsListDragHandleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListDragHandleScreen: View {

    var body: some View {
        List {
            ForEach(1...10, id: \.self) { item in
                HStack {
                    Label {
                        Text("Preview.Item.\(item)")
                    } icon: {
                        Color.red
                    }
                    Spacer()
                    ListDragHandle()
                }
            }
            .onMove { _, _ in }
            .onDelete { _ in }
        }
        .toolbar {
            EditButton()
        }
        .navigationTitle("ListDragHandle")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
