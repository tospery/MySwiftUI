//
//  MySwiftUIKitScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI
import Pulse
import PulseUI

struct MySwiftUIKitScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("Bundle") {
                ConsoleView()
                    .onAppear {
                        var message = "buildNumber: \(Bundle.main.buildNumber)\n"
                        message += "displayName: \(Bundle.main.displayName)\n"
                        message += "versionNumber: \(Bundle.main.versionNumber)"
                        print(message)
                        LoggerStore.shared.storeMessage(label: "Bundle", level: .debug, message: message)
                    }
            }
            NavigationLink("Buttons") { MySwiftUIKitButtonsScreen() }
            NavigationLink("Navigation") { MySwiftUIKitNavigationScreen() }
            NavigationLink("Lists") { MySwiftUIKitListsScreen() }
            NavigationLink("Styles") { MySwiftUIKitStylesScreen() }
            NavigationLink("Text") { MySwiftUIKitTextScreen() }
        }
        .navigationTitle("MySwiftUIKitScreen")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
