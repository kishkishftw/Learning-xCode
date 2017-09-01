//
//  DetailViewController.swift
//  Lab 5
//
//  Created by Kishore Baskar on 7/12/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var dataFromTable : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = dataFromTable
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
