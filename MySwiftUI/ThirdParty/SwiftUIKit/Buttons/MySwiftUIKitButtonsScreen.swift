//
//  MySwiftUIKitButtonsScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI

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
