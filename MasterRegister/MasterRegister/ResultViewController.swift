//
//  ResultViewController.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var sexLabel: UILabel!
    
    @IBOutlet weak var statusJobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDataFromPlist()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func loadDataFromPlist() {
        guard let city = UserDefaults.standard.object(forKey: "city") as? String else {return}
        
        guard let district = UserDefaults.standard.object(forKey: "district") as? String else {return}
        
        addressLabel.text = district + " - " + city
        
        guard let gender = UserDefaults.standard.object(forKey: "gender") as? String else {return}
        
        sexLabel.text = gender
        
        guard let age = UserDefaults.standard.object(forKey: "age") as? Int else {return}
        
        dateLabel.text = String(age)
        
        guard let status = UserDefaults.standard.object(forKey: "status") as? String else {return}
        
        statusJobLabel.text = status
    }

}
