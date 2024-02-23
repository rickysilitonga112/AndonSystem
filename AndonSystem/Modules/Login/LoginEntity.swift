//
//  LoginEntity.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import Foundation

enum LoginButons: Int, CaseIterable {
    case forgotPassword = 0
    case login = 1
    case register = 2
    
    func getIndex() -> Int {
        return self.rawValue
    }
}
