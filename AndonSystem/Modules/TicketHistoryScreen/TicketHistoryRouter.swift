//
//  TicketHistoryRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class TicketHistoryRouter {
    func showView() -> TicketHistoryView {
        let storyboard = UIStoryboard(name: String(describing: TicketHistoryView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: TicketHistoryView.self)) as? TicketHistoryView else {
            fatalError("Error loading storyboard")
        }
        let interactor = TicketHistoryInteractor()
        let presenter = TicketHistoryPresenter(interactor: interactor)
        
        view.presenter = presenter
        return view
    }
}
