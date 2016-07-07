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
  
}








