//
//  CityTableViewController.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class CityTableViewController: UITableViewController {
    
    var displayPlace: [Place] = DataService.shared.getDataCity(fileName: "Cities")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return displayPlace.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell
        cell?.cityLabel.text = "\t\t\t\(indexPath.row + 1). " + displayPlace[indexPath.row].name
        
        return cell!
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showDistrict":
            if let destination = segue.destination as? DistrictViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    let selectedCity = displayPlace[indexPath.row] as! City
                    UserDefaults.standard.set(displayPlace[indexPath.row].name, forKey: "city")
                    destination.displayPlace = DataService.shared.getDataDistrict(fileName: "Districts").filter{$0.cityCode == selectedCity.cityCode}
                }
            }
        default:
            return
        }
    }
}


class DistrictViewController: CityTableViewController {
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            UserDefaults.standard.set(displayPlace[indexPath.row].name, forKey: "district")
        }
    }
}
