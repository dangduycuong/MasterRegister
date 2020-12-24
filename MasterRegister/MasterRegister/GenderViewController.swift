//
//  GenderViewController.swift
//  RegisterSummary
//
//  Created by duycuong on 4/24/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class GenderViewController: BaseViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var arrayButtonGenders: [UIButton]!
    @IBOutlet weak var myPicker: UIPickerView!
    
    var pickerData = [Int](0...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myPicker.delegate = self
        self.myPicker.dataSource = self
        myPicker.selectRow(18, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(pickerData[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserDefaults.standard.set(String(pickerData[row]), forKey: "age")
    }
    
    @IBAction func onclickBtn(_ sender: UIButton) {
        guard sender.isSelected == false else {
            sender.isSelected = false
            return
        }
        for button in arrayButtonGenders {
            button.isSelected = false
        }
        sender.isSelected = true
        UserDefaults.standard.set(sender.title(for: .selected), forKey: "gender")
    }
    
}
