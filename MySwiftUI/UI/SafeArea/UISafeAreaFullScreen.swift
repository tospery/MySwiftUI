//
//  UISafeAreaFullScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI

struct UISafeAreaFullScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea() // 让背景色填充整个屏幕，包括安全区域
            Text("Hello, World!")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
        .onTapGesture {
            dismiss()
        }
    }
    
}
