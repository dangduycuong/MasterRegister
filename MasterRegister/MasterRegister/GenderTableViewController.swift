//
//  GenderTableViewController.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class GenderTableViewController: UITableViewController {

    @IBOutlet weak var radioLabel1: UILabel!
    
    @IBOutlet weak var radioLabel2: UILabel!
    
    var gender: [String] = ["Male", "Female"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return gender.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell
        // Configure the cell...
        cell?.cityLabel.text = gender[indexPath.row]
        
        return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(gender[indexPath.row], forKey: "gender")
    }


}
