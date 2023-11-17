//
//  Book.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import Foundation

struct Book: Identifiable, Hashable, Codable {
    var title: String
    var id: UUID = UUID()
    
    init(title: String) {
        self.title = title
        //self.id = UUID() // nasty bug!!
    }
    
    static func examples() -> [Book] {
        [
            Book(title: "book 1"),
            Book(title: "book 2"),
            Book(title: "book 3")
        ]
    }
}
