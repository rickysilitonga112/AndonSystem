//
//  ProfileScreenRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class ProfileScreenRouter: BaseRouter {
    func showView() -> ProfileScreenView {
        let storyboard = UIStoryboard(name: String(describing: ProfileScreenView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: ProfileScreenView.self)) as? ProfileScreenView else {
            fatalError("Error loading storyboard")
        }
        let interactor = ProfileScreenInteractor()
        let presenter = ProfileScreenPresenter(interactor: interactor)
        
        view.presenter = presenter
        return view
    }
}
