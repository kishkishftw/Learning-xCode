//
//  ForecastClass.swift
//  WeatherAppTest
//
//  Created by Kishore Baskar on 7/19/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import Foundation

class ForecastClass : NSObject
{
    var DayOfWeek: String
    var Forecast: String
    var HiLo: String
    var PoP: String
    
    init(DayOfWeek: String, Forecast: String, HiLo: String, PoP: String) {
        self.DayOfWeek = DayOfWeek
        self.Forecast = Forecast
        self.HiLo = HiLo
        self.PoP = PoP
    }

}
