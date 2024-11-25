//
//  MySwiftUIKitListsListShelfSectionScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListShelfSectionScreen: View {

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                PreviewSection()
                PreviewSection()
                PreviewSection()
            }
        }
        .navigationTitle("ListShelfSection")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    struct PreviewSection: View {
        func printText() {
            print("Tapped")
        }
        
        func button(_ index: Int) -> some View {
            Button(action: printText) {
                Text("Preview.Button.\(index)")
            }
        }
        
        var body: some View {
            ListShelfSection {
                ListSectionTitle("Preview.SectionTitle")
            } content: {
                Group {
                    Button {} label: {
                        ListCard {
                            Color.red
                        } contextMenu: {
                            button(1)
                            button(2)
                            button(3)
                        }
                    }
                    
                    ListCard {
                        Color.green
                    } contextMenu: {
                        button(1)
                        button(2)
                        button(3)
                    }
                    
                    ListCard {
                        Color.blue
                    } contextMenu: {
                        button(1)
                        button(2)
                        button(3)
                    }
                }
                .buttonStyle(.listCard)
                .frame(width: 150, height: 150)
            }
        }
    }
    
}
