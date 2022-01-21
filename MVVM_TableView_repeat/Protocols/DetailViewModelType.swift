//
//  DetailViewModelTypr.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 20.01.22.
//

import Foundation

protocol DetailViewModelType {
    var description: String {get}
    var age: Box<String?> {get}
}
