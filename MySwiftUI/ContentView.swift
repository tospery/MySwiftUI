//
//  ContentView.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("颜色") {
                    NavigationLink("系统内置的颜色") { Color01SystemScreen() }
                }
                Section("三方库") {
                    NavigationLink("Parchment-4.1.0") { MyParchmentScreen() }
                }
            }
            .navigationTitle("MySwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
