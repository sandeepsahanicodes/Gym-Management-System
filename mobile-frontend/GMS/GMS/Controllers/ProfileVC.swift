//
//  ProfileVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 05/02/25.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var profileDetailsView: ProfileDetailsView!
    
    let profileDetail = ProfileDetails(userAvatar: "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", userName: "Sandeep Sahani", userBio: "Upcoming Software Developer at Swiggy", phoneNumber: "7608959749", emailAddress: "sandeepsahani76j@gmail.com", location: "Sambalpur, Odisha", joiningDate: "Joined at 25 February 2021", subscriptionEndingDate: "56 days left", lastFeePaid: "Last fee paid at 24 December 2024", trainerAssigned: "Trainer Assigned Mukesh Sharma")
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Profile",isAvatarHidden: true)
        profileDetailsView.configure(details: profileDetail)
    }
    
    @IBAction func editProfileBtnTapped(_ sender: Any) {
        ViewControllerFactory.push(ofType: EditProfileVC.self, fromStoryboard: "Main", using: self.navigationController)
    }
    
    @IBAction func logOutBtnTapped(_ sender: Any) {
        
    }
}
