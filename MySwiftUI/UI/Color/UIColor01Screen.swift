//
//  UIColor01Screen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/12/20.
//

import UIKit
import SwiftUI

struct UIColor01Screen: View {

    var body: some View {
        VStack(spacing: 0) {
            Color.primary
                .frame(height: 44)
            Color.secondary
                .frame(height: 44)
            Spacer()
            Button {
                print("UIView.appearance().overrideUserInterfaceStyle = \(UIView.appearance().overrideUserInterfaceStyle)")
            } label: {
                Text("切换暗黑模式")
            }
        }
        // .environment(\.colorScheme, .dark)
    }
    
}


extension Color {
    
//    static var myTestColor: Color {
////        return Color { scheme in
////               scheme == .dark ? dark : light
////           }
////        .init
////        return Color { scheme in
////            scheme == .dark ? .white : .black
////        }
//        .ini
//    }
//    
}
