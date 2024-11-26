//
//  MySwiftUIKitViewsScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI

struct MySwiftUIKitViewsScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("CustomRoundedRectangle") { MySwiftUIKitCustomRoundedRectangleScreen() }
            NavigationLink("FetchedDataView") { MySwiftUIKitFetchedDataViewScreen() }
            NavigationLink("TextReplacement") { MySwiftUIKitTextReplacementScreen() }
        }
        .navigationTitle("Views")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
