//
//  threebTableViewCell.swift
//  timApp
//
//  Created by Kyle Gil Tan on 7/10/20.
//  Copyright © 2020 Kyle Gil Tan. All rights reserved.
//

import UIKit

class threebTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet var picture: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
