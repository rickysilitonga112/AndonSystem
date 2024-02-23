//
//  LoginView.swift
//  AndonSystem
//
//  Created by Ricky Silitonga on 22/02/24.
//

import UIKit

class LoginView: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var presenter: LoginPresenter?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    private func setupUI() {
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true

        emailTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
    }
    
    
    @IBAction func didTapButtons(_ sender: UIButton) {
        guard let presenter = presenter,
              let navigation = self.navigationController else {
            return
        }
        switch sender.tag {
        case LoginButons.forgotPassword.getIndex():
        break
        case LoginButons.login.getIndex():
            presenter.setupRootViewController()
        case LoginButons.register.getIndex():
            presenter.navigateToRegister(from: navigation)
        default:
            break
        }
    }
}
