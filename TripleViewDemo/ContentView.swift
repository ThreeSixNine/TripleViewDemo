//
//  ContentView.swift
//  TripleViewDemo
//
//  Created by HeartBank® on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var dataManager = ModelDataManager()
    @StateObject var navigationManager = NavigationStateManager()
    
    var body: some View {
        NavigationSplitView(columnVisibility: $navigationManager.columnVisibility, sidebar: {
            SidebarView()
                .navigationSplitViewColumnWidth(200)
        }, content: {
            MiddleView()
                .navigationSplitViewColumnWidth(min: 1 00, ideal: 250, max: 500)
        }, detail: {
            DetailView() 
        })
        .padding()
        .environmentObject(dataManager)
        .environmentObject(navigationManager)
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}
