//
//  MySwiftUIKitPresentationScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI

struct MySwiftUIKitPresentationScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("AlertContext") { MySwiftUIKitAlertContextScreen() }
            NavigationLink("FullScreenCoverContext") { MySwiftUIKitFullScreenCoverContextScreen() }
            NavigationLink("SheetContext") { MySwiftUIKitSheetContextScreen() }
        }
        .navigationTitle("Presentation")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
