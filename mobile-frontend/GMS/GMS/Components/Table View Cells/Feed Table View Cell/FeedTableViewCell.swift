//
//  FeedTableViewCell.swift
//  GMS
//
//  Created by Sandeep Sahani on 04/02/25.
//

import UIKit
import Kingfisher

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var joiningDate: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postCaption: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    private func setUpViews() {
        self.userAvatar.makeCircular()
        self.postImage.applyCornerRadius(value: 5)
    }
    public func configure(userAvatar: String?, userName: String, joiningDate: String, postImage: String, postCaption: String) {
        
        if let userAvatar = userAvatar {
            self.userAvatar.kf.setImage(with: URL(string: userAvatar))
        }
        self.userName.text = userName
        self.joiningDate.text = joiningDate
        self.postImage.kf.setImage(with: URL(string: postImage))
        self.postCaption.text = postCaption
    }
}
