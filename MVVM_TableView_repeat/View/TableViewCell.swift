//
//  TableViewCell.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 19.01.22.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {return}
            fullnameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
}
