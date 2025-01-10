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
            List {
                systemSection()
                uiSection()
                libSection()
            }
            .navigationTitle("MySwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    // MARK: - 系统
    @ViewBuilder
    func systemSection() -> some View {
        Section("系统") {
//            NavigationLink("环境变量@Environment") { SystemEnvironmentScreen() }
//            NavigationLink("根据按钮位置显示动态弹窗") { SystemAnchorPreference01Screen() }
        }
    }
    
    // MARK: - 界面
    @ViewBuilder
    func uiSection() -> some View {
        Section("界面") {
            NavigationLink("通过对齐参考线实现角标") { UI01BadgeScreen() }
            //            NavigationLink("系统内置的颜色") { UI01ColorSystemScreen() }
            //            NavigationLink("内置字体与大小") { UI02FontSystemScreen() }
            //            NavigationLink("演示ignoresSafeArea") { UISafeAreaScreen() }
            //            NavigationLink("切换暗黑模式") { UIColor01Screen() }
        }
    }
    
    // MARK: - 三方库
    @ViewBuilder
    func libSection() -> some View {
        Section("三方库") {
//            NavigationLink("【日志】Pulse-4.2.7") { MyPulseScreen() }
//            NavigationLink("【工具】SwiftUIKit-5.0.0") { MySwiftUIKitScreen() }
//            NavigationLink("【分页】Parchment-4.1.0") { MyParchmentScreen() }
        }
    }
    
}

#Preview {
    ContentView()
}
