//
//  TripleViewDemoApp.swift
//  TripleViewDemo
//
//  Created by HeartBank® on 11/16/23.
//

import SwiftUI

@main
struct TripleViewDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        #if os(OSX)
        Settings {
            SettingsView()
                .frame(minWidth: 300, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity)
        }
        #endif
    }
}
