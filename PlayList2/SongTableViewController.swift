//
//  SongTableViewController.swift
//  PlayList2
//
//  Created by D Chad Leonard on 7/7/16.
//  Copyright © 2016 D Chad Leonard. All rights reserved.
//

import UIKit

class SongTableViewController: UIViewController {
  
  @IBOutlet weak var songTextField: UITextField!
  
  @IBOutlet weak var artistTextField: UITextField!

  @IBOutlet weak var myTableView: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Action Buttons
  
  @IBAction func addButtonTapped(sender: AnyObject) {
  }
  
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
