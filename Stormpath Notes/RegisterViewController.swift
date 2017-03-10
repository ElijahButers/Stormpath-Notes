//
//  RegisterViewController.swift
//  Stormpath Notes
//
//  Created by Edward Jiang on 3/11/16.
//  Copyright © 2016 Stormpath. All rights reserved.
//

import UIKit
import Stormpath

class RegisterViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: .exit)
    }
    
    func exit() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func register(_ sender: AnyObject) {
        // Code for registering the user
        
        let newUser = RegistrationModel(email: emailTextField.text!, password: passwordTextField.text!)
        newUser.givenName = firstNameTextField.text!
        newUser.surname = lastNameTextField.text!
    }

}

private extension Selector {
    static let exit = #selector(RegisterViewController.exit)
}
