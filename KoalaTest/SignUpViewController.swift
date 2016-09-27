//
//  SignUpViewController.swift
//  KoalaTest
//
//  Created by Philipp Eibl on 9/25/16.
//  Copyright © 2016 Philipp Eibl. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBAction func recognizedSwipeRight(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "signUpToLogin", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpUserInterface()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpUserInterface() {
    
        let userNameTextField: UITextField = UITextField()
        userNameTextField.placeholder = "Username"
        let xPoint = self.view.frame.width - (self.view.frame.width - 20)
        userNameTextField.frame = CGRect(x: xPoint, y: self.view.center.y, width: self.view.frame.width - 40, height: 40)
        userNameTextField.backgroundColor = UIColor.white
        userNameTextField.borderStyle = .roundedRect
        //textField.becomeFirstResponder()
        //textField.delegate = self
        view.addSubview(userNameTextField)
        
        let passwordTextField: UITextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.frame = CGRect(x: xPoint, y: self.view.center.y + 50, width: self.view.frame.width - 40, height: 40)
        passwordTextField.backgroundColor = UIColor.white
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        //textField.becomeFirstResponder()
        //textField.delegate = self
        view.addSubview(passwordTextField)
        
        let signUpButton: UIButton = UIButton()
        signUpButton.setTitle("Sign Up", for: UIControlState.normal)
        signUpButton.setTitleColor(UIColor.white, for: .normal)
        signUpButton.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25)
        signUpButton.frame = CGRect(x: xPoint, y: self.view.center.y + 100, width: self.view.frame.width - 40, height: 40)
        signUpButton.addTarget(self, action: #selector(SignUpViewController.signUp), for: UIControlEvents.touchUpInside)
        view.addSubview(signUpButton)
    }
    
    func signUp() {
        performSegue(withIdentifier: "signUpToWaiting", sender: self)
    }
}

