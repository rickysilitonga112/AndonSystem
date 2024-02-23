//
//  RegisterPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 23/02/24.
//

import Foundation

class RegisterPresenter: BasePresenter {
    private let interactor: RegisterInteractor
    
    init(interactor: RegisterInteractor) {
        self.interactor = interactor
    }
}
