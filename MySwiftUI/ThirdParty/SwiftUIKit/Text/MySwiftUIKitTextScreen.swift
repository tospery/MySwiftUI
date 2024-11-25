//
//  MySwiftUIKitTextScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI

struct MySwiftUIKitTextScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("LinkText") { MySwiftUIKitLinkTextScreen() }
            NavigationLink("TextEditorStyle") { MySwiftUIKitTextEditorStyleScreen() }
            NavigationLink("TextFieldClearButton") { MySwiftUIKitTextFieldClearButtonScreen() }
        }
        .navigationTitle("Text")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
