//
//  SettingsTableViewCell.swift
//  Whatsapp
//
//  Created by Mehul  Singhal  on 14/03/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var settingsImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
