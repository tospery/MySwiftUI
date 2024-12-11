//
//  SystemEnvironmentScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/12/11.
//

import SwiftUI

struct SystemEnvironmentScreen: View {
    
    var body: some View {
        List {
            
        }
        .environment(\.defaultMinListRowHeight, 0)
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .navigationTitle("@Environment")
    }
}
