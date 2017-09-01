//
//  ViewController.swift
//  Lab 3
//
//  Created by Kishore Baskar on 7/3/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    var cities = [String]()
    var restaurants = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = Bundle.main.url(forResource:"Restaurants", withExtension: "plist")
        {
            do
            {
                let data = try Data(contentsOf:url)
                let pickerData = try
                    PropertyListSerialization.propertyList(
                        from: data, options: [], format: nil)
                as! [String:[String]]
               
                var array = Array(pickerData.keys)
                array = array.sorted()
                
                for (key, values) in pickerData
                {
                    cities.append(key)
                    restaurants.append(values.sorted())
                }
                updateLabel()
                
            } catch {
                print(error)
            }
            
        }
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if(component == 0)
        {
            return cities[row]
        }
        if(component == 1)
        {
            return restaurants[picker.selectedRow(inComponent: 0)][row]
        }
        return "hello"
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0)
        {
            return cities.count
        }
        if(component == 1)
        {
            return restaurants[picker.selectedRow(inComponent: 0)].count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0)
        {
            pickerView.reloadAllComponents()
            updateLabel()
        }
        else
        {
            updateLabel()
        }
        
        
    }
    
    func updateLabel()
    {
        label.text = cities[picker.selectedRow(inComponent: 0)] + " - " + restaurants[picker.selectedRow(inComponent: 0)][picker.selectedRow(inComponent: 1)]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

