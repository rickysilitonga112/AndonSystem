//
//  ChatScreenPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation

class ChatScreenPresenter: BasePresenter {
    private let interactor: ChatScreenInteractor
    
    init(interactor: ChatScreenInteractor) {
        self.interactor = interactor
    }
}
