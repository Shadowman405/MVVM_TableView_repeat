//
//  TableViewModelType.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 20.01.22.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int {get}
    var profiles: [Profile] {get}
}
