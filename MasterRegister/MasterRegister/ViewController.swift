//
//  ViewController.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the navigation bar on the this viewcontroller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Show thw navigation bar on other view controler
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}

