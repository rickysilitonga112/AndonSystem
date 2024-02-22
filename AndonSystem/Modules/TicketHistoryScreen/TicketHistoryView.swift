//
//  TicketHistoryView.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class TicketHistoryView: UIViewController {
    var presenter: TicketHistoryPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ticket History"
        view.backgroundColor = .systemBackground
    }
}
