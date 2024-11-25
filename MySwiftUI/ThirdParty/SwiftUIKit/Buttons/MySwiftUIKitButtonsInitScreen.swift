//
//  MySwiftUIKitButtonsInitScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitButtonsInitScreen: View {
    
    var body: some View {
        VStack {
            Button("Preview.Button", .symbol("checkmark")) {
                print("Tapped!")
            }
        }
        .navigationTitle("Init")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
