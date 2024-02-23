//
//  LoginPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation
import UIKit
import RxSwift


class LoginPresenter: BasePresenter {
    private let interactor: LoginInteractor
    private let router = LoginRouter()
    
    init(interactor: LoginInteractor) {
        self.interactor = interactor
    }
    
    func setupRootViewController() {
        router.setupRootViewController()
    }
    
    func navigateToRegister(from navigation: UINavigationController) {
        router.navigateToRegister(from: navigation)
    }
}
