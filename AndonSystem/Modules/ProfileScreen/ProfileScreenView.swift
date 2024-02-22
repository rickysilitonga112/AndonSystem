//
//  ProfileScreenView.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class ProfileScreenView: UIViewController {
    var presenter: ProfileScreenPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile"
        view.backgroundColor = .systemBackground
    }

}
