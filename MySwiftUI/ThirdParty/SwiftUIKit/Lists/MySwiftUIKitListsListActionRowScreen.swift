//
//  MySwiftUIKitListsListActionRowScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListActionRowScreen: View {
    
    var body: some View {
        List {
            ListActionRow(
                title: "Preview.Title.\(1)",
                text: "Preview.Text.\(1)",
                action: .call(phoneNumber: "1234")
            )
            
            ListActionRow(
                title: "Preview.Title.\(2)",
                text: "Preview.Text.\(2)",
                action: .copy("")
            )
            .buttonStyle(.borderedProminent)
            
            ListActionRow(
                title: "Preview.Title.\(3)",
                text: "Preview.Text.Long",
                action: .email(address: "")
            )
            
            ListActionRow(
                title: "Preview.Title.\(4)",
                text: "Preview.Text.\(4)",
                action: nil
            )
        }
        .navigationTitle("ListActionRow")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
