//
//  MainTabbarRouter.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class MainTabbarRouter: BaseRouter {
    func showView() -> MainTabbarView {
        let storyboard = UIStoryboard(name: String(describing: MainTabbarView.self), bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: String(describing: MainTabbarView.self)) as? MainTabbarView else {
            fatalError("Error loading storyboard")
        }
        let interactor = MainTabbarInteractor()
        let presenter = MainTabbarPresenter(interactor: interactor)
        
        view.presenter = presenter
        return view
    }
    
    func navigateToHome() -> UINavigationController {
        let view = UINavigationController(rootViewController: HomeScreenRouter().showView())
        view.tabBarItem = UITabBarItem(title: "Home",
                                       image: UIImage(systemName: "house.fill"),
                                       tag: 0
        )
        view.navigationBar.prefersLargeTitles = true
        view.navigationItem.largeTitleDisplayMode = .automatic
        return view
    }
    
    func navigateToTicketHistory() -> UINavigationController {
        let view = UINavigationController(rootViewController: TicketHistoryRouter().showView())
        view.tabBarItem = UITabBarItem(title: "History",
                                       image: UIImage(systemName: "list.clipboard.fill"),
                                       tag: 1
        )
        view.navigationBar.prefersLargeTitles = true
        view.navigationItem.largeTitleDisplayMode = .automatic
        return view
    }
    
    func navigateToChat() -> UINavigationController {
        let view = UINavigationController(rootViewController: ChatScreenRouter().showView())
        view.tabBarItem = UITabBarItem(title: "Chats",
                                       image: UIImage(systemName: "message.badge.fill"),
                                       tag: 2
        )
        view.navigationBar.prefersLargeTitles = true
        view.navigationItem.largeTitleDisplayMode = .automatic
        return view
    }
    
    func navigateToProfile() -> UINavigationController {
        let view = UINavigationController(rootViewController: ProfileScreenRouter().showView())
        view.tabBarItem = UITabBarItem(title: "Profile",
                                       image: UIImage(systemName: "person.fill"),
                                       tag: 3
        )
        view.navigationBar.prefersLargeTitles = true
        view.navigationItem.largeTitleDisplayMode = .automatic
        return view
    }
    
    
    func tabbarController() -> [UIViewController] {
        return [navigateToHome(), navigateToTicketHistory(), navigateToChat(), navigateToProfile()]
    }
}
