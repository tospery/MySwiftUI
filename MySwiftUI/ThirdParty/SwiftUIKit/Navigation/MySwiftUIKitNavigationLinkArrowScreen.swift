//
//  MySwiftUIKitNavigationLinkArrowScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitNavigationLinkArrowScreen: View {

    var body: some View {
        List {
            NavigationLink {
                Text("Preview.Text")
            } label: {
                Text("Preview.Link")
            }
            
            NavigationLink("Preview.Link") {
                Color.red
            }
            NavigationButton {} content: {
                Text("Preview.Text")
            }
            NavigationLinkArrow()
        }
        .foregroundColor(.red)
        .navigationTitle("NavigationLinkArrow")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
