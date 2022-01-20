//
//  TableViewController.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 19.01.22.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var viewModel: TableViewViewModelType?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell,
              let viewModel = viewModel else {return UITableViewCell()}
        
        let cellViewModel = viewModel.cellViewModelForIndexPath(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else {return}
        viewModel.selectRow(atIndexPath: indexPath)
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let id = segue.identifier, let viewModel = viewModel else {return}
        
        if id == "detailSegue" {
            if let desctinatioVC = segue.destination as? DetailViewController {
                desctinatioVC.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }
}
