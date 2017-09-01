//
//  TableViewCell.swift
//  Lab 5
//
//  Created by Kishore Baskar on 7/12/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var major: UILabel!
    @IBOutlet weak var university: UILabel!
    @IBOutlet weak var joinYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
