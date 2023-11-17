//
//  DetailView.swift
//  TripleViewDemo
//
//  Created by HeartBank® on 11/16/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var navigationManager: NavigationStateManager
    
    var body: some View {
        if let category = navigationManager.selectedCategory {
            Group {
                switch category {
                    case .movie:
                        if let movie = navigationManager.selectedMovie {
                            MovieDetailView(movie: movie)
                        } else {
                            Text("Select a movie")
                        }
                    case .song:
                        if let song = navigationManager.selectedSong {
                            SongDetailView(song: song)
                        } else {
                            Text("Select a song")
                        }
                    case .book:
                        if let book = navigationManager.selectedBook {
                            BookDetailView(book: book)
                        } else {
                            Text("Select a book")
                        }
                }
            }
        } else {
            Text("Select something")
        }
    }
}

#Preview {
    DetailView()
        .environmentObject(NavigationStateManager())
}
