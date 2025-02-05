//
//  ProfileDetailsView.swift
//  GMS
//
//  Created by Sandeep Sahani on 05/02/25.
//

import UIKit
import Kingfisher

struct ProfileDetails {
    let userAvatar: String?
    let userName: String
    let userBio: String
    let phoneNumber: String
    let emailAddress: String
    let location: String
    let joiningDate: String
    let subscriptionEndingDate: String
    let lastFeePaid: String
    let trainerAssigned: String
}

class ProfileDetailsView: UIView {
    
    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userBio: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var emailAddress: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var joiningDate: UILabel!
    @IBOutlet weak var subscriptionEndingDate: UILabel!
    @IBOutlet weak var lastFeePaid: UILabel!
    @IBOutlet weak var trainerAssigned: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed(String(describing: ProfileDetailsView.self), owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        setUpViews()
    }
    private func setUpViews() {
        self.userAvatar.makeCircular()
    }
    
    public func configure(details: ProfileDetails) {
        if let userAvatar = details.userAvatar {
            self.userAvatar.kf.setImage(with: URL(string: userAvatar))
        }
        self.userName.text = details.userName
        self.userBio.text = details.userBio
        self.phoneNumber.text = details.phoneNumber
        self.emailAddress.text = details.emailAddress
        self.location.text = details.location
        self.joiningDate.text = details.joiningDate
        self.subscriptionEndingDate.text = details.subscriptionEndingDate
        self.lastFeePaid.text = details.lastFeePaid
        self.trainerAssigned.text = details.trainerAssigned
    }
    
}
