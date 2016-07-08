//
//  PlaylistTableViewController.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import UIKit

class PlaylistTableViewController: UITableViewController {
  
  
  @IBOutlet weak var playlistTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    tableView.reloadData()
    
  }
  
  // MARK - Action Buttons
  
  @IBAction func addButtonTapped(sender: AnyObject){
    
    guard let playlistName = playlistTextField.text else {
      return
    }
    
    playlistController.sharedController.addPlaylist(playlistName)
    playlistTextField.text = ""
    tableView.reloadData()
    
  }
  
  
  // MARK: - Table view data source
  
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return playlistController.sharedController.playlists.count
  }
  
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("playlistCell", forIndexPath: indexPath)
    
    let playlist = playlistController.sharedController.playlists[indexPath.row]
    cell.textLabel?.text = playlist.title
    cell.detailTextLabel?.text = "\(playlist.songsArray.count) songs"
    
    
    return cell
  }
  
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
   // Return false if you do not want the specified item to be editable.
   return true
   }
   */
  
  
  // Override to support editing the table view.
  override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
      
      let playlist = playlistController.sharedController.playlists[indexPath.row]
      playlistController.sharedController.deletePlaylist(playlist)
      
      // Delete the row from the data source
      tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
    
    
  }
  
  
  /*
   // Override to support rearranging the table view.
   override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
  
  // MARK: - Navigation
  
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    // How do we get there?
    if segue.identifier == "toPlaylistDetailPlaylist" {
      // Where to?
      let songTVC = segue.destinationViewController as? SongTableViewController
      
      
      // What do I need to take? And where is it currently?
      
      if let indexPath = tableView.indexPathForSelectedRow {
        let playlist = playlistController.sharedController.playlists[indexPath.row]
        // Did I arrive? Did I bring it?
        songTVC?.playlist = playlist
        
      }
      
      
      
    }
    
    
    
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
  }
  
  
}










