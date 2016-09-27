//
//  LoginViewController.swift
//  KoalaTest
//
//  Created by Philipp Eibl on 9/25/16.
//  Copyright © 2016 Philipp Eibl. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBAction func swipeRecognizedLeft(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "loginToSignUp", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpUI() {
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
        signUpButton.setTitle("Login", for: UIControlState.normal)
        signUpButton.setTitleColor(UIColor.white, for: .normal)
        signUpButton.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25)
        signUpButton.frame = CGRect(x: xPoint, y: self.view.center.y + 100, width: self.view.frame.width - 40, height: 40)
        signUpButton.addTarget(self, action: #selector(LoginViewController.login), for: UIControlEvents.touchUpInside)
        view.addSubview(signUpButton)
    }
    
    func login() {
        performSegue(withIdentifier: "loginToWaiting", sender: self)
    }
}

