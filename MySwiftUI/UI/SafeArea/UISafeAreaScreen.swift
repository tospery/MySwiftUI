//
//  UISafeAreaScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI

struct UISafeAreaScreen: View {
    
    @State private var isFull = false
    @State private var isVertical = false
    @State private var isKeyboard = false
    @State private var isAnimation = false
    @State private var isCover = false
    
    var body: some View {
        Form {
            Button("背景视图全屏显示") {
                isFull = true
            }
            Button("单独忽略顶部或底部安全区域") {
                isVertical = true
            }
            Button("与键盘的交互") {
                isKeyboard = true
            }
            Button("动画过渡中使用") {
                isAnimation = true
            }
            Button("配合全屏模态视图") {
                isCover = true
            }
        }
        .navigationTitle("演示ignoresSafeArea")
        .navigationBarTitleDisplayMode(.inline)
        .fullScreenCover(isPresented: $isFull) { UISafeAreaFullScreen() }
        .fullScreenCover(isPresented: $isVertical) { UISafeAreaVerticalScreen() }
        .fullScreenCover(isPresented: $isKeyboard) { UISafeAreaKeyboardScreen() }
        .fullScreenCover(isPresented: $isAnimation) { UISafeAreaAnimationScreen() }
        .fullScreenCover(isPresented: $isCover) {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                Button("Dismiss") {
                    isCover = false
                }
                .foregroundColor(.white)
            }
        }
    }
}
