//
//  TableView.swift
//  WeatherAppTest
//
//  Created by Kishore Baskar on 7/18/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class TableView: UITableView {

    var forecasts = [ForecastClass]()
    
    override func numberOfRows(inSection section: Int) -> Int {
        return 2
    }
    
    override func cellForRow(at indexPath: IndexPath) -> UITableViewCell? {
        let cell = dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        let object = forecasts[(indexPath).row]
        /*cell?.DayOfWeek.text = object.DayOfWeek
        cell?.Forecast.text = object.Forecast
        cell?.HiLo.text = object.HiLo
        cell?.PoP.text = object.PoP*/
        cell?.DayOfWeek.text = "hellooo"
        cell?.Forecast.text = "cooL"
        cell?.HiLo.text = "beans"
        cell?.PoP.text = "yup"
        
        return cell!
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
