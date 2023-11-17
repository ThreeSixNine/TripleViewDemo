//
//  MiddleView.swift
//  TripleViewDemo
//
//  Created by HeartBank® on 11/16/23.
//

import SwiftUI

struct MiddleView: View {
    @EnvironmentObject var dataManager: ModelDataManager
    @EnvironmentObject var navigationManager: NavigationStateManager
    
    var body: some View {
        if let category = navigationManager.selectedCategory {
            Group {
                switch category {
                    case .movie:
                        List(dataManager.movies, selection: $navigationManager.selectedMovie) { movie in
                            Text(movie.title)
                                .tag(movie)
                        }
                    case .song:
                        List(dataManager.songs, selection: $navigationManager.selectedSong) { song in
                            Text(song.title)
                                .tag(song)
                        }
                    case .book:
                        List(dataManager.books, selection: $navigationManager.selectedBook) { book in
                            Text(book.title)
                                .tag(book)
                        }
                }
            }
            .navigationTitle(category.title())
        } else {
            Text("Select a category")
        }
    }
}

#Preview {
    MiddleView()
        .environmentObject(ModelDataManager())
        .environmentObject(NavigationStateManager())
}
