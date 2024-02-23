//
//  RegisterEntity.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 23/02/24.
//

import Foundation

enum RegisterButtons: Int, CaseIterable {
    case register = 0
    case toLogin = 1
    
    func getIndex() -> Int {
        return self.rawValue
    }
}
