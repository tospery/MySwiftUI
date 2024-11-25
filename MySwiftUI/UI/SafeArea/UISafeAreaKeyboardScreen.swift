//
//  UISafeAreaKeyboardScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI

struct UISafeAreaKeyboardScreen: View {
    
    @State private var text = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color.white)
            Spacer()
        }
        .background(Color.yellow)
        .ignoresSafeArea(.keyboard)
        .onTapGesture {
            dismiss()
        }
    }
    
}
