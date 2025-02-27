//
//  ViewController.swift
//  GMS
//
//  Created by Sandeep Sahani on 28/01/25.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var navigatorHeaderView: NavigationHeaderView!
    
    @IBOutlet weak var nameInputField: InputField!
    @IBOutlet weak var emailInputField: InputField!
    @IBOutlet weak var passwordInputField: InputField!
    @IBOutlet weak var roleDropDownInputField: DropDownInputField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigatorHeaderView.configure(heading: "Login",isAvatarHidden: true)
        nameInputField.configure(heading: "Full Name", placeholder: "Enter your full name", contentType: .name)
        emailInputField.configure(heading: "Email", placeholder: "Enter you email", contentType: .emailAddress)
        passwordInputField.configure(heading: "Password", placeholder: "Enter your password", contentType: .password)
        roleDropDownInputField.configure(heading: "Login as", placeholder: "Select your role", dropDownElements: ["Member","Trainer","Admin"])
    }
}

