//
//  ViewController.swift
//  GMS
//
//  Created by Sandeep Sahani on 28/01/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInputField: InputField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameInputField.configure(heading: "Full Name", placeholder: "Enter your full name", contentType: .password)
       
    }


}

