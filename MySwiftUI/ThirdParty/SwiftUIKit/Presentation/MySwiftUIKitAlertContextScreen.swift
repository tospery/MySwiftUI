//
//  MySwiftUIKitAlertContextScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitAlertContextScreen: View {

    @StateObject var context = AlertContext()
    
    var body: some View {
        Button("Show alert") {
            context.present(.customAlert)
        }
        .alert(context)
        .navigationTitle("AlertContext")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

extension Alert {
    static let customAlert = Alert(title: Text("Hello, world!"))
}
