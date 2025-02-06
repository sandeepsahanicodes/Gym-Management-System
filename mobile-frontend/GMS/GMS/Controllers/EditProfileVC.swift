//
//  EditProfileVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 06/02/25.
//

import UIKit

class EditProfileVC: UIViewController {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var nameInputTextView: InputTextView!
    @IBOutlet weak var bioInputTextView: InputTextView!
    @IBOutlet weak var genderInputTextView: InputTextView!
    @IBOutlet weak var addressInputTextView: InputTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Edit Profile", avatarImage: "sandeep")
        nameInputTextView.configure(heading: "Name", text: "Sandeep Sahani")
        bioInputTextView.configure(heading: "Bio", text: "Upcoming Software Developer at Swiggy")
        genderInputTextView.configure(heading: "Gender", text: "Male")
        addressInputTextView.configure(heading: "Address", text: "Sambalpur, Odisha")
        setUpViews()
    }
    
    private func setUpViews() {
        self.userAvatar.makeCircular()
    }
    
    @IBAction func uploadBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func saveBtnTapped(_ sender: Any) {
        print(nameInputTextView.getText() ?? "Enter some value instead of whitespace!")
    }
}
