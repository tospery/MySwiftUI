//
//  MySwiftUIKitFetchedDataViewScreen.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/26.
//

import SwiftUI
import SwiftUIKit_Hi

struct MySwiftUIKitFetchedDataViewScreen: View {

    let nilData: String? = nil
    let content: (String) -> AnyView = { Text($0).any() }
    let loadingView = Text("Preview.Loading")
    let noDataView = Text("Preview.NoData")
       
    var body: some View {
        Group {
            FetchedDataView(data: "Fetched data", isLoading: true, loadingView: loadingView, noDataView: noDataView, content: content)
            FetchedDataView(data: "Fetched data", isLoading: false, loadingView: loadingView, noDataView: noDataView, content: content)
            FetchedDataView(data: nilData, isLoading: true, loadingView: loadingView, noDataView: noDataView, content: content)
            FetchedDataView(data: nilData, isLoading: false, loadingView: loadingView, noDataView: noDataView, content: content)
        }
        .navigationTitle("FetchedDataView")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
