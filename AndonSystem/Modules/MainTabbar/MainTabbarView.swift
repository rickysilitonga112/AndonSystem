//
//  MainTabbar.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class MainTabbarView: UITabBarController {
    var presenter: MainTabbarPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers = presenter?.tabbarController()
    }
}
