//
//  HomeScreenPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation

class HomeScreenPresenter: BasePresenter {
    private let interactor: HomeScreenInteractor
    
    init(interactor: HomeScreenInteractor) {
        self.interactor = interactor
    }
}
