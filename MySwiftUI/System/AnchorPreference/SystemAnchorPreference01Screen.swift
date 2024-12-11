//
//  SystemAnchorPreference01Screen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/12/11.
//

import SwiftUI

struct SystemAnchorPreference01Screen: View {
    
    @State private var showTooltip = false

    var body: some View {
        VStack {
            Spacer()
            
            // 按钮，捕获其几何信息
            Button(action: {
                withAnimation {
                    showTooltip.toggle()
                }
            }) {
                Text("Tap Me")
                    .padding()
                    .background(Capsule().fill(Color.blue))
                    .foregroundColor(.white)
            }
            .anchorPreference(
                key: TooltipPreferenceKey.self,
                value: .bounds
            ) { anchor in
                anchor
            }
            
            Spacer()
        }
        .overlayPreferenceValue(TooltipPreferenceKey.self) { anchor in
            GeometryReader { geometry in
                if let anchor = anchor, showTooltip {
                    let rect = geometry[anchor]
                    TooltipView()
                        .position(
                            x: rect.midX,
                            y: rect.minY - 40 // 提示框在按钮上方
                        )
                        .animation(.easeInOut, value: showTooltip)
                }
            }
        }
    }
    
}

struct TooltipPreferenceKey: PreferenceKey {
    static var defaultValue: Anchor<CGRect>? = nil

    static func reduce(value: inout Anchor<CGRect>?, nextValue: () -> Anchor<CGRect>?) {
        value = nextValue()
    }
}

struct TooltipView: View {
    var body: some View {
        Text("This is a tooltip!")
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.black.opacity(0.8)))
            .foregroundColor(.white)
            .shadow(radius: 5)
    }
}
