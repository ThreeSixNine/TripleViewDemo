//
//  MovieDetailView.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.title)
        }
        .navigationTitle(movie.title)
    }
}

#Preview {
    MovieDetailView(movie: Movie(title: "movie a"))
}
