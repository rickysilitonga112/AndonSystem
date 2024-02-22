//
//  ChatScreenRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class ChatScreenRouter {
    func showView() -> ChatScreenView {
        let storyboard = UIStoryboard(name: String(describing: ChatScreenView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: ChatScreenView.self)) as? ChatScreenView else {
            fatalError("Error loading storyboard")
        }
        let interactor = ChatScreenInteractor()
        let presenter = ChatScreenPresenter(interactor: interactor)
        
        view.presenter = presenter
        return view
    }
}
