//
//  VIewModel.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 20.01.22.
//

import Foundation


class ViewModel: TableViewViewModelType{
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [Profile(name: "Uncle", secondName: "Bogdan", age: 69),
               Profile(name: "Pig", secondName: "Benis", age: 18),
               Profile(name: "Bebra", secondName: "Leather", age: 25)]
    
    func numberOfRows() -> Int {
        profiles.count
    }
    
    func cellViewModelForIndexPath(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    //MARK: - DetailVM funcs
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {return nil}
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
}
