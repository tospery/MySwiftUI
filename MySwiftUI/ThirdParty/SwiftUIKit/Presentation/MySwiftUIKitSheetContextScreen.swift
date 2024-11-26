//
//  MySwiftUIKitSheetContextScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitSheetContextScreen: View {

    @StateObject var context = SheetContext()
    
    var body: some View {
        Button("Show sheet") {
            context.present(Text("Hello, world!"))
        }
        .sheet(context)
        .navigationTitle("SheetContext")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
