//
//  MySwiftUIKitTextEditorStyleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitTextEditorStyleScreen: View {
    
    @State var text: String = "Hello, world"
      
    var body: some View {
        VStack {
            TextField("", text: $text)
                .textFieldStyle(.roundedBorder)
            TextEditor(text: $text)
                .textEditorStyle(.roundedBorder)
            TextEditor(text: $text)
                .textEditorStyle(.roundedColorBorder(.red, 5))
        }
        .navigationTitle("TextEditorStyle")
        .navigationBarTitleDisplayMode(.inline)
        // .environment(\.colorScheme, .dark)
    }
    
}
