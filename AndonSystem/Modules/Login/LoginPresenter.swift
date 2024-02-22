//
//  LoginPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation
import RxSwift

class LoginPresenter: BasePresenter {
    private let interactor: LoginInteractor
    
    init(interactor: LoginInteractor) {
        self.interactor = interactor
    }
}
