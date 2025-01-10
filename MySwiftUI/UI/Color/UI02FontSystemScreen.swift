//
//  UI02FontSystemScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/24.
//

import SwiftUI
import UIKit

struct UI02FontSystemScreen: View {
    
    var body: some View {
        List {
            Text("largeTitle - \(Font.largeTitle.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.largeTitle)
            Text("title - \(Font.title.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.title)
            Text("title2 - \(Font.title2.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.title2)
            Text("title3 - \(Font.title3.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.title3)
            Text("headline - \(Font.headline.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.headline)
            Text("body - \(Font.body.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.body)
            Text("callout - \(Font.callout.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.callout)
            Text("footnote - \(Font.footnote.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.footnote)
            Text("caption - \(Font.caption.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.caption)
            Text("caption2 - \(Font.caption2.uiFont()?.pointSize ?? 0)")
                .frame(height: 40)
                .font(.caption2)
        }
        .environment(\.defaultMinListRowHeight, 0)
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .navigationTitle("内置字体与大小")
    }
}

extension Font {
    
    func uiFont() -> UIFont? {
        switch self {
        case .largeTitle:
            return UIFont.preferredFont(forTextStyle: .largeTitle)
        case .title:
            return UIFont.preferredFont(forTextStyle: .title1)
        case .title2:
            return UIFont.preferredFont(forTextStyle: .title2)
        case .title3:
            return UIFont.preferredFont(forTextStyle: .title3)
        case .headline:
            return UIFont.preferredFont(forTextStyle: .headline)
        case .subheadline:
            return UIFont.preferredFont(forTextStyle: .subheadline)
        case .body:
            return UIFont.preferredFont(forTextStyle: .body)
        case .callout:
            return UIFont.preferredFont(forTextStyle: .callout)
        case .footnote:
            return UIFont.preferredFont(forTextStyle: .footnote)
        case .caption:
            return UIFont.preferredFont(forTextStyle: .caption1)
        case .caption2:
            return UIFont.preferredFont(forTextStyle: .caption2)
        default:
            return nil
        }
    }
    
}
