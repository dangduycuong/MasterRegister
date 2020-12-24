//
//  BaseViewController.swift
//  MasterRegister
//
//  Created by Dang Duy Cuong on 12/24/20.
//  Copyright © 2020 duycuong. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var spinner = UIActivityIndicatorView()
    
    func loadSpinnerView() {
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.startAnimating()
        view.addSubview(spinner)

        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    func showLoading() {
        loadSpinnerView()
        spinner.startAnimating()
        view.isUserInteractionEnabled = false
        view.alpha = 0.5
    }
    
    func hideLoading() {
        loadSpinnerView()
        spinner.stopAnimating()
        view.isUserInteractionEnabled = true
        view.alpha = 1
    }
    
}
