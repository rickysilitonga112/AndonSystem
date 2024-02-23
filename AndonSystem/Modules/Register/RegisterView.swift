//
//  RegisterView.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 23/02/24.
//

import UIKit

class RegisterView: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    var presenter: RegisterPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true

        emailTextField.layer.cornerRadius = 10
        fullNameTextField.layer.cornerRadius = 10
        confirmPasswordTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
    }
    
    
    
    
    
    
    @IBAction func buttonActions(_ sender: UIButton) {
        guard let presenter = presenter,
              let navigation = self.navigationController else {
            return
        }
        
        switch sender.tag {
        case RegisterButtons.register.getIndex():
             break
        case RegisterButtons.toLogin.getIndex():
            presenter.navigateToLogin(from: navigation)
        default:
            break
        }
    }
    
}
