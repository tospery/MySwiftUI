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
                Section("界面") {
                    NavigationLink("系统内置的颜色") { UI01ColorSystemScreen() }
                    NavigationLink("内置字体与大小") { UI02FontSystemScreen() }
                    NavigationLink("演示ignoresSafeArea") { UISafeAreaScreen() }
                }
                Section("三方库") {
                    NavigationLink("【日志】Pulse-4.2.7") { MyPulseScreen() }
                    NavigationLink("【工具】SwiftUIKit-5.0.0") { MySwiftUIKitScreen() }
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
