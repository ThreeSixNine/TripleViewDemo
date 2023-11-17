//
//  SidebarView.swift
//  NavigationSplitViewDemo
//
//  Created by HeartBank® on 11/14/23.
//

import SwiftUI

struct SidebarView: View {
    @EnvironmentObject var dataManager: ModelDataManager
    @EnvironmentObject var navigationManager: NavigationStateManager
    @State var showSettings = false
    
    var body: some View {
        List(selection: $navigationManager.selectedCategory) {
            ForEach(Category.allCases) { category in
                NavigationLink(category.title(), value: category)
//                Text(category.title())
//                    .tag(category)
            }
        }
        #if os(iOS)
        .toolbar {
            Button {
                showSettings.toggle()
            } label: {
                Image(systemName: "gear")
            }
        }
        .sheet(isPresented: $showSettings, content: {
            SettingsView()
        })
        .navigationBarTitleDisplayMode(.inline)
        #endif
        .navigationTitle("Categories")
    }
}

#Preview {
    SidebarView()
        .environmentObject(ModelDataManager())
        .environmentObject(NavigationStateManager())
}
