//
//  UISafeAreaVerticalScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI

struct UISafeAreaVerticalScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Color.red
                .frame(height: 100)
            Spacer()
            Color.green
                .frame(height: 100)
        }
        .ignoresSafeArea(.all, edges: [.top, .bottom])
        .onTapGesture {
            dismiss()
        }
    }
    
}
