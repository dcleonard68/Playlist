//
//  SongController.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import Foundation

class SongController {
  
  static func createSong(name: String, artist: String, playlist: Playlist){
    let song = Song(title: name, artist: artist)
    playlistController.sharedController.addSongToPlaylist(song, playlist: playlist)
    
  }
  
}





