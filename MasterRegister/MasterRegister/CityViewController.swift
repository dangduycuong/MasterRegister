//
//  CityViewController.swift
//  MasterRegister
//
//  Created by Dang Duy Cuong on 12/24/20.
//  Copyright © 2020 duycuong. All rights reserved.
//

import UIKit

class CityViewController: BaseViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    var displayPlace = [Place]()
    var suggest = [Place]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CityTableViewCell.nib(), forCellReuseIdentifier: CityTableViewCell.identifier())
        searchTextField.delegate = self
        setShadowView(view: searchView)
        isLoading = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        title = "Danh sách tỉnh/thành phố"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if isLoading {
            isLoading = false
            showLoading()
            DispatchQueue.main.async {
                self.displayPlace = DataService.shared.getDataCity(fileName: "Cities")
                self.suggest = self.displayPlace
                self.tableView.reloadData()
                self.hideLoading()
            }
        }
        
    }


}

extension CityViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return suggest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CityTableViewCell.identifier(), for: indexPath) as! CityTableViewCell
        cell.cityTextView.text = "\t" + suggest[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        title = ""
        let vc = Storyboard.Main.districtViewController()
        let selectedCity = suggest[indexPath.row] as! City
        UserDefaults.standard.set(suggest[indexPath.row].name, forKey: "city")
        vc.displayPlace = DataService.shared.getDataDistrict(fileName: "Districts").filter{$0.cityCode == selectedCity.cityCode}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

extension CityViewController: UITextFieldDelegate {
    func filterCity() {
        if searchTextField.text == "" {
            suggest = displayPlace
        } else {
            suggest = displayPlace.filter { (key: Place) in
                if let text = searchTextField.text?.lowercased() {
                    let content = key.name.lowercased()
                    if content.range(of: text) != nil {
                        return true
                    }
                }
                return false
            }
        }
        tableView.reloadData()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        filterCity()
    }
}
