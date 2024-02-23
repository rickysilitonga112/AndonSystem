//
//  RegisterPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 23/02/24.
//

import Foundation
import UIKit

class RegisterPresenter: BasePresenter {
    private let interactor: RegisterInteractor
    private let router = RegisterRouter()
    
    init(interactor: RegisterInteractor) {
        self.interactor = interactor
    }
    
    func navigateToLogin(from navigation: UINavigationController) {
        router.navigateToLogin(from: navigation)
    }
}
