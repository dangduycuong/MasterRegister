//
//  DataService.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import Foundation
typealias JSON = Dictionary<AnyHashable, Any>
class DataService {
    static var shared = DataService()
    var _dataCities: [City]?
    var dataCities: [City] {
        get {
            if _dataCities == nil {
                getDataCity(fileName: "Cities")
                
            }
            return _dataCities ?? []
        }
        set {
            _dataCities = newValue
        }
    }
    
    func getDataCity(fileName: String) -> [City] {
        _dataCities = []
        guard let pathCity = Bundle.main.path(forResource: fileName, ofType: "plist") else {return []}
        guard let dictCity = NSDictionary.init(contentsOfFile: pathCity) as? JSON else {return []}
        guard let citiesJson = dictCity["Cities"] as? [JSON] else {return []}
        
        for cityDictionary in citiesJson {
            if let city = City(dictionary: cityDictionary) {
                _dataCities?.append(city)
            }
        }
        return _dataCities ?? []
    }
    
    private var _dataDistricts: [District]?
    var dataDistricts: [District] {
        get {
            if _dataDistricts == nil {
                getDataDistrict(fileName: "Districts")
            }
            
            return _dataDistricts ?? []
        }
        set {
            _dataDistricts = newValue
        }
    }
    
    func getDataDistrict(fileName: String) -> [District] {
        _dataDistricts = []
        guard let pathDistrict = Bundle.main.path(forResource: fileName, ofType: "plist") else {
            return []
        }
        guard let dictDistrict = NSDictionary.init(contentsOfFile: pathDistrict) as? JSON else {
            return []
        }
        guard let districtsJson = dictDistrict["Districts"] as? [JSON] else {
            return []
        }
        for districtDictionary in districtsJson {
            if let district = District(dictionary: districtDictionary) {
                _dataDistricts?.append(district)
            }
        }
        return _dataDistricts ?? []
    }
}
