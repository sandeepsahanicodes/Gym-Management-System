//
//  PersonTableViewCell.swift
//  GMS
//
//  Created by Sandeep Sahani on 30/01/25.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet private weak var avatar: UIImageView!
    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var joiningDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configure(profilePicture: String?, name: String, joiningDate: String) {
        if let profilePicture = profilePicture {
            self.avatar.image = UIImage(named: profilePicture)
        }
        self.name.text = name
        self.joiningDate.text = joiningDate
    }
    
    private func setUpViews() {
        avatar.makeCircular()
    }
}
