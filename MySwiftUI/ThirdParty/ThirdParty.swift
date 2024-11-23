//
//  ThirdParty.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/23.
//

import SwiftUI

struct ThirdParty: View {
    var body: some View {
        Form {
            // NavigationLink("AxisSegmentedView") { AxisSegmentedView() }
            NavigationLink("Parchment-4.1.0") { MyParchment() }
        }
        .navigationTitle("三方库")
        .navigationBarTitleDisplayMode(.inline)
    }
}
