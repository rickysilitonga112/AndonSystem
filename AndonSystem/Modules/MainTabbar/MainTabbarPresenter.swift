//
//  MainTabbarPresenter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class MainTabbarPresenter: BasePresenter {
    private let interactor: MainTabbarInteractor
    private let router = MainTabbarRouter()
    
    init(interactor: MainTabbarInteractor) {
        self.interactor = interactor
    }
    
    func tabbarController() -> [UIViewController] {
        router.tabbarController()
    }
    
}
