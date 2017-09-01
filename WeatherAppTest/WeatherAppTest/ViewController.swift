//
//  ViewController.swift
//  WeatherAppTest
//
//  Created by Kishore Baskar on 7/18/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Forecast: UILabel!
    
    @IBOutlet weak var table: UITableView!
    let apiString10DayForecast = "https://api.wunderground.com/api/20a59c0a7d59cf21/forecast10day/lang:EN/q/CA/San_Francisco.json"
    
    var forecasts = [ForecastClass]()
    
    override func viewDidLoad() {
        Forecast.text = "San Francisco\nTBHD\nTBD\nETC"
        var swifty : JSON?
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let request = URLRequest(url: URL(string: apiString10DayForecast)!)
        
        let task: URLSessionDataTask = session.dataTask(with: request) { (receivedData, response, error) -> Void in
            
            
            if let data = receivedData {
                // no do-catch since no errors thrown
                swifty = JSON(data)
                
                print("start JSON breakdown...")
                
                let forecastDict = swifty?["forecast"]["txt_forecast"]["forecastday"]
                for (_, value):(String, JSON) in forecastDict!
                {
                   
                    let dayOfWeek = value["title"].string
                    let forecastText = value["fcttext"].string
                    let PoP = value["pop"].string
                    
                    self.forecasts.append(ForecastClass(DayOfWeek: dayOfWeek!, Forecast: forecastText!, HiLo: "hellO", PoP: PoP!))
                    
                    DispatchQueue.main.async {
                        self.table.reloadData()
                    }
                    
                }
                
               
                
            }
            
        }
        task.resume()
        
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        let object = forecasts[(indexPath).row * 2]
        cell?.DayOfWeek.text = object.DayOfWeek
         cell?.Forecast.text = object.Forecast
         
         cell?.PoP.text = object.PoP
       
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

