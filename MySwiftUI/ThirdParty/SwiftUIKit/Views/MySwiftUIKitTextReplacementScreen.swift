//
//  MySwiftUIKitTextReplacementScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitTextReplacementScreen: View {

    var body: some View {
        TextReplacement(
              "This view creates views that create views.",
              replace: "view"
        ) {
            Text($0)
                .font(.title)
                .underline()
        }
        .navigationTitle("TextReplacement")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
