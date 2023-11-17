//
//  Book.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import Foundation

struct Song: Identifiable, Hashable, Codable {
    var title: String
    var artist: String
    var year: Int
    var id: UUID = UUID()
    
    init(title: String, artist: String, year: Int) {
        self.title = title
        self.artist = artist
        self.year = year
        //self.id = UUID()
    }
    
    static func examples() -> [Song] {
        [
            Song(title: "song 1", artist: "artist 1", year: 2021),
            Song(title: "song 2", artist: "artist 2", year: 2022),
            Song(title: "song 3", artist: "artist 3", year: 2023)
        ]
    }
}
