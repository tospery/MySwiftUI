//
//  MyPulseScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI
import Pulse
import PulseUI

struct MyPulseScreen: View {
    
    var body: some View {
        Form {
            NavigationLink(destination: ConsoleView()) {
                Text("Console")
            }
        }
        .navigationTitle("MyPulseScreen")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            LoggerStore.shared.storeMessage(
                label: "auth",
                level: .debug,
                message: "Will login user",
                metadata: ["userId": .string("uid-1")]
            )
        }
    }
}
