//
//  HomeScreenRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class HomeScreenRouter {
    func showView() -> HomeScreenView {
        let storyboard = UIStoryboard(name: String(describing: HomeScreenView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: HomeScreenView.self)) as? HomeScreenView else {
            fatalError("Error loading storyboard")
        }
        let interactor = HomeScreenInteractor()
        let presenter = HomeScreenPresenter(interactor: interactor)
        
        view.presenter = presenter
        return view
    }
}
