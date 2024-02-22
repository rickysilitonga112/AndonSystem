//
//  ProfileScreenPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation

class ProfileScreenPresenter: BasePresenter {
    private let interactor: ProfileScreenInteractor
    
    init(interactor: ProfileScreenInteractor) {
        self.interactor = interactor
    }
}
