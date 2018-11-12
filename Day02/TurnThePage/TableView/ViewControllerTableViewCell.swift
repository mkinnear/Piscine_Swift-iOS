//
//  ViewControllerTableViewCell.swift
//  TableView
//
//  Created by Keegan KINNEAR on 2018/10/04.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var MyLabel: UILabel!
    
    @IBOutlet weak var MyLabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
