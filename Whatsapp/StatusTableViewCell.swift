//
//  StatusTableViewCell.swift
//  Whatsapp
//
//  Created by Mehul  Singhal  on 08/03/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {
    
    @IBOutlet var contactLabel: UILabel!
    @IBOutlet var thumbnailContactImageView: UIImageView!
    @IBOutlet var statusLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
