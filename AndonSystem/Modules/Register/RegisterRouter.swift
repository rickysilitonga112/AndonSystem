//
//  RegisterRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 23/02/24.
//

import Foundation
import UIKit

class RegisterRouter: BaseRouter {
    
    func showView() -> RegisterView {
        let storyboard = UIStoryboard(name: String(describing: RegisterView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: RegisterView.self)) as? RegisterView else {
            fatalError("Error loading storyboard")
        }
        let interactor = RegisterInteractor()
        let presenter = RegisterPresenter(interactor: interactor)
        view.navigationItem.setHidesBackButton(true, animated: false)
        view.presenter = presenter
        return view
    }
    
    func navigateToLogin(from navigation: UINavigationController) {
        navigation.popViewController(animated: true)
    }
}
