//
//  Playlist.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import Foundation

class Playlist: Equatable {
  let title: String
  var songsArray: [Song]
  
  init(title: String, songs: [Song] = []){
    self.title = title
    self.songsArray = songs
  }

}


func ==(lhs:Playlist, rhs: Playlist)-> Bool {
  return lhs.title == rhs.title && lhs.songsArray == rhs.songsArray
  
}

