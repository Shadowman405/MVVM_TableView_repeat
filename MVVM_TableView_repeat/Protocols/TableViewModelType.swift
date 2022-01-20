//
//  TableViewModelType.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 20.01.22.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModelForIndexPath(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
