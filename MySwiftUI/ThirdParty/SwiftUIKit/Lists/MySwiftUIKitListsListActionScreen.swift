//
//  MySwiftUIKitListsListActionScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListActionScreen: View {
    
    var body: some View {
        List {
            view(for: .call(phoneNumber: "abc123"))
            #if os(macOS) || os(iOS)
            view(for: .copy("abc123"))
            #endif
            view(for: .email(address: "abc123"))
            view(for: .open(url: "https://danielsaidi.com"))
        }
        .navigationTitle("ListAction")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func view(for action: ListAction) -> some View {
        action.button
    }
    
}
