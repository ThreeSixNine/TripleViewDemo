//
//  Category.swift
//  TripleViewDemo
//
//  Created by HeartBank® on 11/16/23.
//

import Foundation

enum Category: String, Hashable, CaseIterable, Identifiable {
    case movie
    case song
    case book
    
    var id: String {
        return self.rawValue
    }
    
    func title() -> String {
        switch self {
            case .movie:
                return "Movies"
            case .song:
                return "Songs"
            case .book:
                return "Books"
        }
    }
}
