//
//  BookDetailView.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import SwiftUI

struct BookDetailView: View {
    @EnvironmentObject var navigationManager: NavigationStateManager
    @EnvironmentObject var dataManager: ModelDataManager
    
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var isRegular: Bool {
        horizontalSizeClass == .regular
    }
    #else
        let isRegular = false
    #endif
    
    let book: Book
    
    var body: some View {
        VStack {
            Text("book detail view")
            Divider()
            
            VStack {
                Text("people also like")
                    .bold()
                ForEach(dataManager.books) { book in
                    Button(book.title) {
                        //navigationManager.selectionState = .book(Book(title: book.title))
                        navigationManager.setSelectedBook(to: book)
                    }
                }
            }
        }
        .navigationTitle(book.title)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                if navigationManager.columnVisibility != .detailOnly, horizontalSizeClass == .regular {
                    Button(action: {
                        navigationManager.columnVisibility = .detailOnly
                    }, label: {
                        Image(systemName: "arrow.down.right.and.arrow.up.left")
                    })
                }
            }
        }
    }
}

#Preview {
    BookDetailView(book: Book(title: "book a"))
        .environmentObject(NavigationStateManager())
        .environmentObject(ModelDataManager())
}
