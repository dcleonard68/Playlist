//
//  Song.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import Foundation

class Song: Equatable {
  let title: String
  let artist: String
  
  init(title: String, artist: String){
    self.title = title
    self.artist = artist
  }
  
}

func ==(lhs: Song, rhs: Song) -> Bool {
  return lhs.title == rhs.title && lhs.artist == rhs.artist
}

