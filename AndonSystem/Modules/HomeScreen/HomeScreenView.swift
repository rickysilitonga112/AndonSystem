//
//  ViewController.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class HomeScreenView: UIViewController {

    var presenter: HomeScreenPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Dashboard"
        view.backgroundColor = .systemBackground
    }


}

