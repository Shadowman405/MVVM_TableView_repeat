//
//  Box.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 21.01.22.
//

import Foundation


class Box<T> {
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
