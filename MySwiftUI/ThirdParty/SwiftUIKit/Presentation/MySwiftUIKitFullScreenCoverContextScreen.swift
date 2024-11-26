//
//  MySwiftUIKitFullScreenCoverContextScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitFullScreenCoverContextScreen: View {

    @StateObject var context = FullScreenCoverContext()
    
    var body: some View {
        Button("Show cover") {
            context.present(Text("Hello, world!"))
        }
        .fullScreenCover(context)
        .navigationTitle("AlertContext")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
