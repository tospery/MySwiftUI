//
//  UI01BadgeScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2025/1/10.
//

import SwiftUI

struct UI01BadgeScreen: View {

    var body: some View {
        VStack(spacing: 0) {
            Text("Hello")
                .padding()
                .background(.teal)
                .badge {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 20, height: 20)
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("通过对齐参考线实现角标")
    }

}

extension View {
    func badge<B: View>(@ViewBuilder _ badge: () -> B) -> some View {
        overlay(alignment: .topTrailing) {
            badge()
                .alignmentGuide(.top) { $0.height / 2.0 }
                .alignmentGuide(.trailing) { $0.height / 2.0 }
        }
    }
}
