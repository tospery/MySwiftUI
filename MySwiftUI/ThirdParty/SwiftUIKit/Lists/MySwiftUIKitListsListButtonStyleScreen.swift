//
//  MySwiftUIKitListsListButtonStyleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListButtonStyleScreen: View {
    
    @State
    private var overlayText = ""

    var body: some View {
        List {
            ForEach(0...100, id: \.self) { index in
                Button("Preview.Button.\(index)") {
                    overlayText = "\(index) tapped!"
                }
                .buttonStyle(index == 0 ? .list : .list(pressedOpacity: 0.1))
            }
        }
        .overlay(overlay)
        .buttonStyle(.list)
        .navigationTitle("ListButtonStyle")
        .navigationBarTitleDisplayMode(.inline)
    }

    var overlay: some View {
        Text(overlayText)
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(overlayText.isEmpty ? 0 : 1)
            .onTapGesture { overlayText = "" }
    }
    
}
