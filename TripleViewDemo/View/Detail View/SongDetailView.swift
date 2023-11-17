//
//  MovieDetailView.swift
//  TabViewProject
//
//  Created by HeartBank® on 11/14/23.
//

import SwiftUI

struct SongDetailView: View {
    let song: Song
    @EnvironmentObject var modelData: ModelDataManager
    @EnvironmentObject var navigationStateManger: NavigationStateManager
    
    var body: some View {
        VStack {
            Text("song detail")
            Text(song.artist)
                .bold()
            Text("\(song.year)")
            Divider()
            Text("people also like")
            
            ForEach(modelData.songs) { song in
                Button(song.title) {
                    navigationStateManger.setSelectedSong(to: song)
                }
            }
            
            Button {
                //navigationStateManger.popToRoot() 
            } label: {
                Text("go to root")
            }
        }
        .navigationTitle(song.title)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    navigationStateManger.goToSettings()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SongDetailView(song: Song(title: "song a", artist: "artist a", year: 2021))
            .environmentObject(ModelDataManager())
            .environmentObject(NavigationStateManager())
    }
}
