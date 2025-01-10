//
//  MySwiftUIApp.swift
//  MySwiftUI
//
//  Created by 杨建祥 on 2024/11/23.
//

import SwiftUI
import ObjectMapper
import HiBase
import HiSwiftUI

@main
struct MySwiftUIApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    init() {
        Appdata.shared.inject(Profile.init())
        Runtime.shared.work()
        Library.shared.setup()
        Appearance.shared.config()
        logEnvironment()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
                    logEnvironment()
                }
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .onOpenURL { url in
                    print("onOpenURL: \(url)")
                }
                .environment(\.colorScheme, .light)
        }
    }
}

struct User: UserType {
    
    var id = ""
    var username: String?
    var nickname: String?
    var avatar: String?
    
    init() { }
    init?(map: ObjectMapper.Map) { }
    mutating func mapping(map: ObjectMapper.Map) { }
}

struct Profile: ProfileType {
    
    var id = ""
    var isDark: Bool?
    var accentColor: String = Color.red.hexString
    var localization: HiBase.Localization?
    var user: User?
    
    public var loginedUser: (any HiBase.UserType)? {
        get { return user }
        set { user = newValue as? User }
    }
    
    init() { }
    init?(map: ObjectMapper.Map) { }
    mutating func mapping(map: ObjectMapper.Map) { }
}
