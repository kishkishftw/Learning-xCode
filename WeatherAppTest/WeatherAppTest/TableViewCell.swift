//
//  TableViewCell.swift
//  WeatherAppTest
//
//  Created by Kishore Baskar on 7/18/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var PoP: UILabel!
    @IBOutlet weak var Forecast: UILabel!
    @IBOutlet weak var DayOfWeek: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
