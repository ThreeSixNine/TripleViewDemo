//
//  Book.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import Foundation

struct Movie: Identifiable, Hashable, Codable {
    var title: String
    var id: UUID = UUID()
    
    init(title: String) {
        self.title = title
        //self.id = UUID()
    }
    
    static func examples() -> [Movie] {
        [
            Movie(title: "movie 1"),
            Movie(title: "movie 2"),
            Movie(title: "movie 3")
        ]
    }
}
