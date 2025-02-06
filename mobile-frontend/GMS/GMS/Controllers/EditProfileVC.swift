//
//  EditProfileVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 06/02/25.
//

import UIKit
import PhotosUI

class EditProfileVC: UIViewController {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var nameInputTextView: InputTextView!
    @IBOutlet weak var bioInputTextView: InputTextView!
    @IBOutlet weak var emailInputTextView: InputTextView!
    @IBOutlet weak var addressInputTextView: InputTextView!
    
    private let photoPickerHelper = PhotoPickerHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Edit Profile", isAvatarHidden: true)
        nameInputTextView.configure(heading: "Name", text: "Sandeep Sahani")
        bioInputTextView.configure(heading: "Bio", text: "Upcoming Software Developer at Swiggy")
        emailInputTextView.configure(heading: "Email", text: "sandeepsahani76j@gmail.com")
        addressInputTextView.configure(heading: "Address", text: "Sambalpur, Odisha")
        photoPickerHelper.delegate = self
        setUpViews()
    }
    
    private func setUpViews() {
        self.userAvatar.makeCircular()
    }
    
    @IBAction func uploadBtnTapped(_ sender: Any) {
        photoPickerHelper.presentPhotoPicker(from: self)
    }
    
    @IBAction func saveBtnTapped(_ sender: Any) {
        print(nameInputTextView.getText() ?? "Enter some value instead of whitespace!")
    }
}

extension EditProfileVC: PhotoPickerDelegate {
    func didSelectImage(_ image: UIImage) {
        userAvatar.image = image
    }
}
