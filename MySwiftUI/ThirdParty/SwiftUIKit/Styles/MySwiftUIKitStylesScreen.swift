//
//  MySwiftUIKitStylesScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI

struct MySwiftUIKitStylesScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("ViewShadowStyle") { MySwiftUIKitViewShadowStyleScreen() }
        }
        .navigationTitle("Styles")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
