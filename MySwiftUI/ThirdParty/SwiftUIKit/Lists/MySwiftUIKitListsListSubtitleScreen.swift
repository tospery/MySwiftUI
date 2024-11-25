//
//  MySwiftUIKitListsListSubtitleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListSubtitleScreen: View {

    var body: some View {
        List {
            HStack {
                Label {
                    Text("Preview.Label")
                } icon: {
                    Color.red
                }
                Spacer()
                ListSubtitle("Preview.Subtitle")
            }
        }
        .navigationTitle("ListSubtitle")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
