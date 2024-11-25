//
//  MySwiftUIKitViewShadowStyleScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitViewShadowStyleScreen: View {
    
    @State private var isItemElevated = false

    var item: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.white)
            .frame(width: 100, height: 100)
    }

    var body: some View {
        VStack(spacing: 20) {
            item.shadow(.none)
            item.shadow(.badge)
            item.shadow(.sticker)
            
#if os(iOS)
            item.onTapGesture(perform: toggleElevated)
                .shadow(isItemElevated ? .elevated : .badge)
#endif
            
            item.shadow(.elevated)
        }
        .padding()
        .background(Color.gray.opacity(0.4))
        .navigationTitle("ViewShadowStyle")
        .navigationBarTitleDisplayMode(.inline)
    }

    func toggleElevated() {
        withAnimation {
            isItemElevated.toggle()
        }
    }
    
}
