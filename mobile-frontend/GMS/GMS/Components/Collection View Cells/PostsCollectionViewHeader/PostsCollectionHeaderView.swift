//
//  PostsCollectionHeaderView.swift
//  GMS
//
//  Created by Sandeep Sahani on 03/02/25.
//

import UIKit
struct User {
    var userAvatar: String!
    var userName: String
    var userBio: String
    var userPhoneNumber: String
    var userEmail: String
    var userAddress: String
    var joiningDate: String
}
class PostsCollectionHeaderView: UICollectionReusableView {

    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userBio: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userAddress: UILabel!
    @IBOutlet weak var joiningDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    private func setupViews() {
        self.userAvatar.makeCircular()
    }
    
    public func configure(user: User) {
        if let userAvatar = user.userAvatar {
            self.userAvatar.image = UIImage(named: userAvatar)
        }
        self.userName.text = user.userName
        self.userBio.text = user.userBio
        self.userPhoneNumber.text = user.userPhoneNumber
        self.userEmail.text = user.userEmail
        self.userAddress.text = user.userAddress
        self.joiningDate.text = user.joiningDate
    }
}
