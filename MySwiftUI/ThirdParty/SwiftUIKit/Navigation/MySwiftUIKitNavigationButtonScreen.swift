//
//  MySwiftUIKitNavigationButtonScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitNavigationButtonScreen: View {

    @State var isToggled = false
            
    var body: some View {
        List {
            Text("Preview.Toggled.\(isToggled ? 1 : 0)")
            
            NavigationLink {
                Text("Preview.Text")
            } label: {
                Text("Preview.Text")
            }
            .offset()
            
            NavigationButton(action: { isToggled.toggle() }, content: {
                Text("Preview.Button")
            })
        }
        .foregroundColor(.red)
        .navigationTitle("NavigationButton")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
