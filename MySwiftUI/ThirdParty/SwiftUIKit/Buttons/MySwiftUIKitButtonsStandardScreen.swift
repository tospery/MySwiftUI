//
//  MySwiftUIKitButtonsStandardScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitButtonsStandardScreen: View {
    
    var body: some View {
        List {
            buttons()
            buttons().labelStyle(.titleOnly)
            buttons().labelStyle(.iconOnly)
        }
        .navigationTitle("Standard")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    func buttons() -> some View {
        Section {
            ForEach(Button.StandardType.allCases) { type in
                Button(type) { print("Tapped \(type.title)") }
            }
        }
    }
    
}
