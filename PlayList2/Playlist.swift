//
//  Playlist.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import Foundation

class Playlist: Equatable {
  
  private let kPlaylistTitle = "playlistTitleKey"
  private let kSongs = "songsKey"
  
  
  let title: String
  var songsArray: [Song]
  
  
  var dictionaryCopy:[String: AnyObject]{
    return[kPlaylistTitle:title, kSongs:songsArray.map{$0.dictionaryCopy}]

  }
  
  init(title: String, songs: [Song] = []){
    self.title = title
    self.songsArray = songs
  }
  
  init?(dictionary:[String: AnyObject]){
    guard let title = dictionary[kPlaylistTitle] as? String,
      songsDictionaryArray = dictionary[kSongs] as? [[String:AnyObject]] else {
        return nil
    }
    self.title = title
    self.songsArray = songsDictionaryArray.flatMap{Song(dictionary:$0)}
    
  }

}


func ==(lhs:Playlist, rhs: Playlist)-> Bool {
  return lhs.title == rhs.title && lhs.songsArray == rhs.songsArray
  
}

