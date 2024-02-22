//
//  ChatScreenView.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class ChatScreenView: UIViewController {
    var presenter: ChatScreenPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Chats"
        view.backgroundColor = .systemBackground
    }

}
