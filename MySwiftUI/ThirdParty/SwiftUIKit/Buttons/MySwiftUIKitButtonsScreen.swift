//
//  MySwiftUIKitButtonsScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitButtonsScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("Init") { MySwiftUIKitButtonsInitScreen() }
            NavigationLink("Standard") { MySwiftUIKitButtonsStandardScreen() }
        }
        .navigationTitle("Buttons")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
