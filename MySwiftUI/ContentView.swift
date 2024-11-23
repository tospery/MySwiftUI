//
//  ContentView.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                NavigationLink("三方库") { ThirdParty() }
                NavigationLink("UI效果") { UIEffect() }
//                Section("Device") {
//                    NavigationLink("DeviceIdentifier") { MyDeviceIdentifier() }
//                }
//                Section("Lists") {
//                    NavigationLink("ListActionRow") { MyListActionRow() }
//                    NavigationLink("ListButtonGroup") { MyListButtonGroup() }
//                    NavigationLink("ListButtonStyle") { MyListButtonStyle() }
//                    NavigationLink("ListCard") { MyListCard() }
//                    NavigationLink("ListDragHandle") { MyListDragHandle() }
//                    NavigationLink("ListHeader") { MyListHeader() }
//                    NavigationLink("ListSectionTitle") { MyListSectionTitle() }
//                    NavigationLink("ListSelectItem") { MyListSelectItem() }
//                    NavigationLink("ListShelfSection") { MyListShelfSection() }
//                    NavigationLink("ListSubtitle") { MyListSubtitle() }
//                }
//                Section("Pages") {
//                    NavigationLink("PageIndicator") { MyPageIndicator() }
//                    NavigationLink("PageIndicatorStyle") { MyPageIndicatorStyle() }
//                    NavigationLink("PageView") { MyPageView() }
//                }
            }
            .navigationTitle("MySwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
