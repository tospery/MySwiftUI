//
//  MySwiftUIKitListsListHeaderScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListHeaderScreen: View {

    var body: some View {
        VStack {
            List {
                ListHeader {
                    Color.red.frame(square: 150)
                }
                Section {
                    item()
                    item()
                    item()
                    item()
                }
            }
            List {
                Image(systemName: "face.smiling").listHeader(height: 75)
                Section {
                    item()
                    item()
                    item()
                    item()
                }
            }
        }
        .navigationTitle("ListHeader")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func item() -> some View {
        Text("Preview.Item")
    }
    
}
