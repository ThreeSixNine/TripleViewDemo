//
//  ModelDataManager.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import Foundation

class ModelDataManager: ObservableObject {
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
}
