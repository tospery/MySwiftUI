//
//  MySwiftUIKitListsListCardScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListCardScreen: View {

    var body: some View {
        VStack {
            Group {
                Button {} label: {
                    ListCard {
                        Color.red.frame(width: 200, height: 200)
                    }
                }
                .buttonStyle(
                    .listCard(
                        animation: .bouncy,
                        pressedScale: 0.2
                    )
                )
                Button {} label: {
                    ListCard {
                        Color.red.frame(width: 200, height: 200)
                    } contextMenu: {
                        Button("Preview.Button") {}
                    }
                }
            }
            .buttonStyle(.listCard)
            .padding(50)
            .background(Color.gray)
            .cornerRadius(20)
        }
        .navigationTitle("ListCard")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
