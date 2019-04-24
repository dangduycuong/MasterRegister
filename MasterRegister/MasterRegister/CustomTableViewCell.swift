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
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var leadingLabel: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        leadingLabel.constant = view.bounds.width / 2.5
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        cityLabel.text = ""
    }
}
