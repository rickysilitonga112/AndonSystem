//
//  LoginRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation
import UIKit

class LoginRouter: BaseRouter {
    
    func showView() -> LoginView {
        let storyboard = UIStoryboard(name: String(describing: LoginView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: LoginView.self)) as? LoginView else {
            fatalError("Error loading storyboard")
        }
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(interactor: interactor)
        
        view.presenter = presenter
        return view
    }
    
}
