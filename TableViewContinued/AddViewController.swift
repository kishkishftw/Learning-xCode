//
//  AddViewController.swift
//  Lab 5
//
//  Created by Kishore Baskar on 7/12/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var joinYearField: UITextField!
    @IBOutlet weak var universityField: UITextField!
    @IBOutlet weak var majorField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    var student : studentClass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveNewObject(_:)))
        self.navigationItem.rightBarButtonItem = saveButton
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveNewObject(_ sender: AnyObject)
    {
        student = studentClass(name: nameField.text!, major: majorField.text!, university: universityField.text!, joinYear: joinYearField.text!)
        self.performSegue(withIdentifier: "saveStudent", sender: Any?.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "saveStudent" {
            let destVC = segue.destination as? TableViewController
            destVC?.dataFromTable = student
        }
        
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
