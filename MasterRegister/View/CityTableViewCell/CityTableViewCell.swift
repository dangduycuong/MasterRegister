//
//  CityTableViewCell.swift
//  MasterRegister
//
//  Created by Dang Duy Cuong on 12/24/20.
//  Copyright © 2020 duycuong. All rights reserved.
//

import UIKit

class CityTableViewCell: BaseTableViewCell {
    @IBOutlet weak var cityTextView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
