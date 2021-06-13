//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error
                {
                    print(e)
                }
                else//if there were no errors, execute this statement.
                {
                    //Navigate to the Chat View Controller.
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                    //This performs a segue. Since this is performed within a closure,
                    //All function calls must be prefixed by self if it is in self.
                }
                // ...
            }
        }
    }
    
}
