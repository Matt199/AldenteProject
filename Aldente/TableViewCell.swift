//
//  TableViewCell.swift
//  Aldente
//
//  Created by Mateusz Kopacz on 22.08.2016.
//  Copyright © 2016 Mateusz Kopacz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var displayLabel: UILabel!

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var displayTime: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
