//
//  TicketHistoryPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation

class TicketHistoryPresenter: BasePresenter {
    private let interactor: TicketHistoryInteractor
    
    init(interactor: TicketHistoryInteractor) {
        self.interactor = interactor
    }
}
