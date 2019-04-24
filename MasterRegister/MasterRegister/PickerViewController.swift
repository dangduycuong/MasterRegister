//
//  PickerViewController.swift
//  MasterRegister
//
//  Created by duycuong on 4/24/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var agePickerView: UIPickerView!
    
    @IBOutlet var arrayBtttonGender: [UIButton]!
    
    var yearOfBirth = [Int](1940...2010)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agePickerView.selectRow(61, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return yearOfBirth.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(yearOfBirth[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserDefaults.standard.set(yearOfBirth[row], forKey: "age")
        
    }
    
    
    @IBAction func onclickButton(_ sender: UIButton) {
        guard sender.isSelected == false else {
            sender.isSelected = false
            return
        }
        for button in arrayBtttonGender {
            button.isSelected = false
        }
        sender.isSelected = true
        UserDefaults.standard.set(sender.title(for: .selected), forKey: "gender")
    }
    
}
