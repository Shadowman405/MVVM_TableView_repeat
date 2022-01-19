//
//  TableViewController.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 19.01.22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [Profile(name: "Uncle", secondName: "Bogdan", age: 69),
                    Profile(name: "Bebra", secondName: "Leather", age: 18),
                    Profile(name: "Billy", secondName: "Herington", age: 35)]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell else {return UITableViewCell()}
        let profile = profiles[indexPath.row]
        tableViewCell.ageLabel.text = String(describing: profile.age)
        tableViewCell.fullnameLabel.text = "\(profile.name) \(profile.secondName)"

        return tableViewCell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
