//
//  TableViewController.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 19.01.22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewModelType?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRows ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell,
              let viewModel = viewModel else {return UITableViewCell()}
        let profile = viewModel.profiles[indexPath.row]
        tableViewCell.ageLabel.text = String(describing: profile.age)
        tableViewCell.fullnameLabel.text = "\(profile.name) \(profile.secondName)"

        return tableViewCell
    }
}