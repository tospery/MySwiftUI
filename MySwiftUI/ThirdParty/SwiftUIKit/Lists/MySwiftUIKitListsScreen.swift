//
//  MySwiftUIKitListsScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI

struct MySwiftUIKitListsScreen: View {
    
    var body: some View {
        Form {
            NavigationLink("ListAction") { MySwiftUIKitListsListActionScreen() }
            NavigationLink("ListActionRow") { MySwiftUIKitListsListActionRowScreen() }
            NavigationLink("ListButtonGroup") { MySwiftUIKitListsListButtonGroupScreen() }
            NavigationLink("ListButtonStyle") { MySwiftUIKitListsListButtonStyleScreen() }
            NavigationLink("ListCard") { MySwiftUIKitListsListCardScreen() }
            NavigationLink("ListDragHandle") { MySwiftUIKitListsListDragHandleScreen() }
            NavigationLink("ListHeader") { MySwiftUIKitListsListHeaderScreen() }
            NavigationLink("ListSectionTitle") { MySwiftUIKitListsListSectionTitleScreen() }
            NavigationLink("ListSelectItem") { MySwiftUIKitListsListSelectItemScreen() }
            NavigationLink("ListShelfSection") { MySwiftUIKitListsListShelfSectionScreen() }
            NavigationLink("ListSubtitle") { MySwiftUIKitListsListSubtitleScreen() }
            NavigationLink("ReorderableForEach") { MySwiftUIKitListsReorderableForEachScreen() }
        }
        .navigationTitle("Lists")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
