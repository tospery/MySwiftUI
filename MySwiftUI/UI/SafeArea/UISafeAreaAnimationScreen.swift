//
//  UISafeAreaAnimationScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI

struct UISafeAreaAnimationScreen: View {
    
    @State private var isExpanded = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .fill(Color.orange)
                .frame(height: isExpanded ? 600 : 200)
                .animation(.easeInOut, value: isExpanded)
                .ignoresSafeArea(.all, edges: .bottom)
            Button("Toggle") {
                isExpanded.toggle()
            }
            .padding()
        }
        .ignoresSafeArea()
        .onTapGesture {
            dismiss()
        }
    }
    
}
