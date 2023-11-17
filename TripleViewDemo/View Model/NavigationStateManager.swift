//
//  NavigationStateManager.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import Foundation
import Combine
import SwiftUI

class NavigationStateManager: ObservableObject {
    @Published var selectedCategory: Category?
    @Published var selectedSong: Song?
    @Published var selectedMovie: Movie?
    @Published var selectedBook: Book?
    
    @Published var columnVisibility: NavigationSplitViewVisibility = .all
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        $selectedCategory.sink { [weak self] _ in
            self?.selectedBook = nil
            self?.selectedSong = nil
            self?.selectedMovie = nil
        }
        .store(in: &subscriptions)
    }
    
    func goToSettings() {
        
    }
    
    func setSelectedBook(to book: Book) {
        
    }
    
    func setSelectedSong(to song: Song) {
        
    }
}
