//
//  MySwiftUIKitListsListSelectItemScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListSelectItemScreen: View {

    @State
    private var selection = 0
    
    var body: some View {
        List {
            ForEach(0...10, id: \.self) { index in
                Group {
                    ListSelectItem(isSelected: index == selection) {
                        Image.symbol("\(index).circle")
                            .label(
                                "Preview.Item.\(index)"
                            )
                    }
                    ListSelectItem(
                        isSelected: index == selection,
                        selectIndicator: Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    ) {
                        Image.symbol("\(index).circle")
                            .label("Preview.Item.\(index)")
                    }
                }
                #if os(iOS) || os(macOS) || os(visionOS)
                .onTapGesture {
                    selection = index
                }
                #endif
            }
        }
        .navigationTitle("ListSelectItem")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
