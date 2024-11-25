//
//  MySwiftUIKitLinkTextScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitLinkTextScreen: View {
    
    var body: some View {
        List {
            PreviewText()
            PreviewText()
                .foregroundColor(.red)
                .accentColor(.green)
            PreviewText()
                .font(.headline.italic())
                .linkTextStyle(.init(fontWeight: .black))
            PreviewText()
                .accentColor(.orange)
                .lineSpacing(10)
                .linkTextStyle(.plain)
        }
        .navigationTitle("LinkText")
        .navigationBarTitleDisplayMode(.inline)
    }

    struct PreviewText: View {
        var body: some View {
            LinkText(
                components: [
                    .text("You must accept our "),
                    .link("terms & conditions", action: { print("action 1") }),
                    .text(". Also, we have some more "),
                    .link("terms & conditions", action: { print("action 2") }),
                    .text(" that you need to accept, then some "),
                    .link("terms & conditions", action: { print("action 3") }),
                    .text(".")
                ]
            )
        }
    }
    
}
