//
//  MySwiftUIKitListsListButtonGroupScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitListsListButtonGroupScreen: View {
    
    var body: some View {
        VStack(spacing: 0) {
            PreviewList()
            Divider()
            PreviewList()
                .listButtonGroupStyle(.swedish)
            Divider()
            PreviewList()
                .environment(\.colorScheme, .dark)
        }
        .frame(maxHeight: .infinity)
        .background(Color.black.opacity(0.08).ignoresSafeArea())
        .navigationTitle("ListButtonGroup")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    struct PreviewList: View {
        var body: some View {
            List {
                "Add something".previewButton(.add)
                
                ListButtonGroup {
                    HStack {
                        "Bug".previewButton(.bug)
                        "Camera".previewButton(.camera).disabled(true)
                        "Photos".previewButton(.camera).opacity(0.5)
                        "Feedback".previewButton(.feedback)
                    }
                }
                
                Section {
                    Text("Preview.Row")
                    Text("Preview.Row")
                    Text("Preview.Row")
                    Text("Preview.Row")
                }
            }
        }
    }
    
}

private extension ButtonStyle where Self == ListButtonGroupStyle {
    static var swedish: Self {
        .init(
            backgroundColor: .blue,
            labelStyle: .init(color: .yellow)
        )
    }
}

@MainActor
private extension String {
    func previewButton(_ icon: Image) -> some View {
        Button {} label: { Label(LocalizedStringKey(self), icon) }
    }
}

private extension Image {
    static let add = systemImage("plus")
    static let bug = systemImage("ladybug")
    static let camera = systemImage("camera")
    static let feedback = systemImage("envelope")
    static let photoLibrary = systemImage("photo.on.rectangle.angled")
    
    static func systemImage(_ name: String) -> Image {
        Image(systemName: name)
    }
}
