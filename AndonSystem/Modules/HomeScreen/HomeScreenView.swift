//
//  ViewController.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class HomeScreenView: BaseViewController {

    var presenter: HomeScreenPresenter?
    
    override func preload() {
        print(String(describing:  UIApplication.shared.windows.count))
        title = "Dashboard"
    }


}

