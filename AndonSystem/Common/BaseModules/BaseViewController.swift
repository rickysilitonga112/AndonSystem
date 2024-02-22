//
//  BaseViewController.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {
    open var bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureKeyboard()
        navigationSetup()
        listenForNotifications()
        checkConnection()
        if loginStatus() {
            // go to the first vc
        }
        preload()
    }

    func preload() {
        view.backgroundColor = .systemBackground
    }
    
    func configureKeyboard() {
        
    }
    
    func navigationSetup() {
        
    }
    
    func navigateToRoot() {
        guard let navigation = self.navigationController else { return }
        navigation.popToRootViewController(animated: true)
    }
    
    // for checking the connections status
    func checkConnection() {
        
    }
    
    func dismissLoginViewFromNavigationHierarcy() {
        guard let navigation = navigationController else { return }
//        if let loginView = navigation.viewControllers.filter({ $0.isKind(of: LoginView.self) }).first {
//            navigation.viewControllers.removeAll(where: { $0 == loginView })
//        }
    }
    
    private func listenForNotifications() {
        
    }
}

// login status
extension BaseViewController {
    func loginStatus() -> Bool {
        return false
        
    }
}
