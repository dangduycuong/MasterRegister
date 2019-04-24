//
//  StatusTableViewController.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class StatusTableViewController: UITableViewController {

    let statusJobs = ["Chưa có việc", "Đang tìm việc, chờ kết quả", "Đã có việc"]
    
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
        return statusJobs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        // Configure the cell...
        cell.cityLabel.text = statusJobs[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(statusJobs[indexPath.row], forKey: "status")
    }
    

}
