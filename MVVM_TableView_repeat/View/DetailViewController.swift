//
//  DetailViewController.swift
//  MVVM_TableView_repeat
//
//  Created by Maxim Mitin on 20.01.22.
//

import UIKit

class DetailViewController: UIViewController{

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind{ [unowned self] in
            guard let string = $0 else {return}
            self.textLabel.text = string
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else {return}
        self.textLabel.text = viewModel.description
    }

}
