//
//  VIewModel.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 20.01.22.
//

import Foundation


class ViewModel: TableViewModelType {
    
    var profiles = [Profile(name: "Uncle", secondName: "Bogdan", age: 69),
               Profile(name: "Pig", secondName: "Benis", age: 18),
               Profile(name: "Bebra", secondName: "Leather", age: 25)]
    
    var numberOfRows: Int {
        return profiles.count
    }
}
