//
//  SummaryViewController.swift
//  MasterRegister
//
//  Created by duycuong on 4/24/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var district: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var editBtn: UIBarButtonItem!
    
    var isShowRinghtBtn: Bool = false
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        city.text = UserDefaults.standard.object(forKey: "city") as? String
        district.text = UserDefaults.standard.object(forKey: "district") as? String
        age.text = UserDefaults.standard.object(forKey: "age") as? String
        gender.text = UserDefaults.standard.object(forKey: "gender") as? String
        editBtn.isEnabled = isShowRinghtBtn
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func editBtn(_ sender: UIBarButtonItem) {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        let summary = mainSB.instantiateViewController(withIdentifier: "first")         //khoi tao VC
        let navigation = UINavigationController(rootViewController: summary)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()                                                 //Tao khoa va hien thi
    }
    
    
    
}
