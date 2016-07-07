//
//  PlaylistController.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import Foundation

class playlistController {
  
  static let sharedController = playlistController()
  
  var playlists: [Playlist] = []
  
  // CRUD (Create, Read, Update, Delete)
  
  func addPlaylist(name: String) {
    let playlist = Playlist(title: name)
    playlists.append(playlist)
  }
  
  func deletePlaylist(playlist: Playlist) {
    if let index = playlists.indexOf(playlist){
      playlists.removeAtIndex(index)
      
    }
  }
  
  func addSongToPlaylist(song: Song, playlist: Playlist){
    playlist.songsArray.append(song)
  }
  
  func removeSongFromPlaylist(song: Song, playlist: Playlist){
    guard let index = playlist.songsArray.indexOf(song) else {
      return
    }
    
    playlist.songsArray.removeAtIndex(index)
    
  }
  
}








