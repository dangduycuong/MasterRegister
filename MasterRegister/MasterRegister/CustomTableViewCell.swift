//
//  CustomTableViewCell.swift
//  RegisterSummary
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
            if selected {
                cityLabel.backgroundColor = UIColor.cyan
            } else {
                cityLabel.backgroundColor = UIColor.groupTableViewBackground
            }
    }

    override func prepareForReuse() {
        cityLabel.text = ""
    }
}
