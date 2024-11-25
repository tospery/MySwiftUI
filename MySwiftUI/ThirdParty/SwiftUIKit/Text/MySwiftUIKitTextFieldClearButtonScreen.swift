//
//  MySwiftUIKitTextFieldClearButtonScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitTextFieldClearButtonScreen: View {
    
    @State private var text = ""
        
    var placeholder: String {
        .init(localized: "Preview.Placeholder")
    }

    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .withClearButton(for: $text)
            TextField(placeholder, text: $text)
                .withClearButton(
                    for: $text,
                    .bouncy(duration: 1, extraBounce: 0.1)
                )
        }
        .textFieldStyle(.roundedBorder)
        .navigationTitle("TextFieldClearButton")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
