//
//  Storyboard.swift
//  MasterRegister
//
//  Created by Dang Duy Cuong on 12/24/20.
//  Copyright © 2020 duycuong. All rights reserved.
//

import UIKit
struct Storyboard {
    
    struct Main {
        static let manager = UIStoryboard(name: "Main", bundle: nil)
        
        static func cityViewController() -> CityViewController {
            return manager.instantiateViewController(withIdentifier: "CityViewController") as! CityViewController
        }
        
        static func districtViewController() -> DistrictViewController {
            return manager.instantiateViewController(withIdentifier: "DistrictViewController") as! DistrictViewController
        }
    }
}
