//
//  ViewController.swift
//  Lab4v2
//
//  Created by Kishore Baskar on 7/10/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    var dataFromTable : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.text = "You picked " + dataFromTable!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

