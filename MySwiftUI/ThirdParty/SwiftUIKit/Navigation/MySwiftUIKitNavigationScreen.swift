//
//  MySwiftUIKitNavigationScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI

struct MySwiftUIKitNavigationScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("NavigationButton") { MySwiftUIKitNavigationButtonScreen() }
            NavigationLink("NavigationLinkArrow") { MySwiftUIKitNavigationLinkArrowScreen() }
        }
        .navigationTitle("Navigation")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
