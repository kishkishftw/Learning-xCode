ta//
//  TableViewController.swift
//  Lab 5
//
//  Created by Kishore Baskar on 7/12/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var students = [studentClass]()
    var ourDefaults = UserDefaults.standard
    
    var dataFromTable : studentClass?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = self.editButtonItem
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        self.navigationItem.rightBarButtonItem = addButton
        
        if let student = dataFromTable
        {
            students.append(student)
        }
        
        
    }
    
    @IBAction func unwindFromAdd(segue:UIStoryboardSegue) {
        
    }
    
    func insertNewObject(_ sender: AnyObject) {
        let custNum = students.count + 1
        self.performSegue(withIdentifier: "addSegue", sender: Any?.self)
        students.append(studentClass(name: String(custNum), major: String(custNum * 10), university: String(custNum * 100), joinYear: String(custNum * 1000)))
        
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.insertRows(at: [indexPath], with: .automatic)
        self.tableView.reloadData()
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that cwian be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return students.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell

        let object = students[(indexPath).row]
        
        cell?.name.text = object.name
        cell?.major.text = object.major
        cell?.university.text = object.university
        cell?.joinYear.text = object.joinYear

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

   

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            students.remove(at: (indexPath).row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "addSegue")
        {
            
        }
        if(segue.identifier == "showDetail")
        {
            let destVC = segue.destination as? DetailViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow
            destVC?.dataFromTable = students[(selectedIndexPath?.row)!].name
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
