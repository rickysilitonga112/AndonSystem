//
//  LoginView.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class LoginView: BaseViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var presenter: LoginPresenter?
    
    override func preload() {
        title = "Login"
        
        setupUI()
    }
    
    
    private func setupUI() {
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        
        emailTextField.placeholder = "Enter your email"
        emailTextField.backgroundColor = .tertiarySystemBackground
        emailTextField.layer.cornerRadius = 10
        emailTextField.textContentType = .emailAddress
        emailTextField.autocorrectionType = .no
        emailTextField.keyboardType = .emailAddress
        emailTextField.font = .systemFont(ofSize: 16, weight: .regular)
        
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.backgroundColor = .tertiarySystemBackground
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.autocorrectionType = .no
        passwordTextField.textContentType = .password
        passwordTextField.isSecureTextEntry = true
        passwordTextField.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    @IBAction func forgotPasswordDidTap(_ sender: Any) {
        
    }
    
    @IBAction func signInDidTap(_ sender: Any) {
        
    }
}
