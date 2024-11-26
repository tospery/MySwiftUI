//
//  MySwiftUIKitCustomRoundedRectangleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitCustomRoundedRectangleScreen: View {

    var body: some View {
        VStack {
            CustomRoundedRectangle(
                topLeft: 10,
                topRight: 20,
                bottomLeft: 30,
                bottomRight: 40
            )
            .foregroundColor(.red)
        }
        .padding()
        .navigationTitle("CustomRoundedRectangle")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
