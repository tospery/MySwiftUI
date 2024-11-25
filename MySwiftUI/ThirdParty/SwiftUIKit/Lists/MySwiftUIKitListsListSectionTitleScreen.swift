//
//  MySwiftUIKitListsListSectionTitleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListSectionTitleScreen: View {

    var body: some View {
        List {
            Section(header: Text("Preview.SectionTitle")) {
                ListSectionTitle("Preview.SectionTitle")
            }
        }
        .navigationTitle("ListSectionTitle")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
