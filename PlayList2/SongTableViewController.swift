//
//  SongTableViewController.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import UIKit

class SongTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var songTextField: UITextField!
  
  @IBOutlet weak var artistTextField: UITextField!
  
  @IBOutlet weak var myTableView: UITableView!
  
  
  var playlist:Playlist?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  // MARK: - Action Buttons
  
  @IBAction func addButtonTapped(sender: AnyObject) {
    
    guard let playlist = playlist,
      song = songTextField.text,
      artist = artistTextField.text else {
        return
    }
    SongController.createSong(song, artist: artist, playlist: playlist)
    songTextField.text = ""
    artistTextField.text = ""
    myTableView.reloadData()
  }
  
  // MARK - TableView DataSource Methods
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return playlist?.songsArray.count ?? 0
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("songCell", forIndexPath: indexPath)
    let song = playlist?.songsArray[indexPath.row]
    
    cell.textLabel?.text = song?.title
    cell.detailTextLabel?.text = song?.artist
    
    return cell
  }
}
