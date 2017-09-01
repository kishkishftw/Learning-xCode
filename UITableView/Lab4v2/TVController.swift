//
//  TVController.swift
//  Lab4v2
//
//  Created by Kishore Baskar on 7/10/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import UIKit

class TVController: UITableViewController {

    var students = [studentClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        students.append(studentClass(name: "John", major: "CS", university: "UCD", joinYear: "2013"))
        students.append(studentClass(name: "Joe", major: "SE", university: "CPSLO", joinYear: "2014"))
        students.append(studentClass(name: "Jake", major: "AG", university: "UCSC", joinYear: "2012"))
        students.append(studentClass(name: "Jerry", major: "ARCH", university: "UCSC", joinYear: "2011"))
        students.append(studentClass(name: "Johnny", major: "BUS", university: "UCR", joinYear: "2014"))
        students.append(studentClass(name: "Jenna", major: "CPE", university: "UPenn", joinYear: "2012"))
        students.append(studentClass(name: "Jory", major: "BUS", university: "UChic", joinYear: "2015"))
        students.append(studentClass(name: "Jhin", major: "AG", university: "UCLA", joinYear: "2014"))
        students.append(studentClass(name: "Jimmy", major: "MUS", university: "UCR", joinYear: "2013"))
        students.append(studentClass(name: "Jim", major: "ECON", university: "UCSC", joinYear: "2018"))





        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentTableViewCell", for: indexPath) as! studentTableViewCell

        // Configure the cell...
        let student = students[indexPath.row]
        cell.Name?.text = student.name
        cell.Major?.text = student.major
        cell.University.text = student.university
        cell.joinYear.text = student.joinYear
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        
        if segue.identifier == "showDetail" {
            let destVC = segue.destination as? ViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow
            destVC?.dataFromTable = students[(selectedIndexPath?.row)!].name
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func unwindFromDetail(segue:UIStoryboardSegue) {
        
    }
}
