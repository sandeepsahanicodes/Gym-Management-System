//
//  PostVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 06/02/25.
//

import UIKit

class PostVC: UIViewController {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var captiontInputTextView: InputTextView!
    
    private let photoPickerHelper = PhotoPickerHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Post", isAvatarHidden: true)
        captiontInputTextView.configure(heading: "Add caption", text: "")
        photoPickerHelper.delegate = self
    }
    
    @IBAction func uploadBtnTapped(_ sender: Any) {
        photoPickerHelper.presentPhotoPicker(from: self)
    }
    
    @IBAction func publishBtnTapped(_ sender: Any) {
        
    }
}

extension PostVC: PhotoPickerDelegate {
    func didSelectImage(_ image: UIImage) {
        postImage.image = image
    }
}
