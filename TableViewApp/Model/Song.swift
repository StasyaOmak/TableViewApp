//
//  Song.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 27/10/2023.
//

import Foundation

struct Song {
    
    let track: String
    let album: String
    let cover: String
    let songClipUrl: String
    
    static func createSong() -> [Song] {
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        let songClipUrl = DataManager.shared.songClipUrls
        
        for i in 0..<tracks.count {
            let song = Song(track: tracks[i], album: albums[i], cover: covers[i], songClipUrl: songClipUrl[i])
            songs.append(song)
        }
        
        
        return songs
    }
}
