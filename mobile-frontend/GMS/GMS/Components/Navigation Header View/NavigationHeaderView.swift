//
//  NavigationHeader.swift
//  GMS
//
//  Created by Sandeep Sahani on 29/01/25.
//

import UIKit

class NavigationHeaderView: UIView {

    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var navigationHeading: UILabel!
    @IBOutlet private weak var headerAvatarBtn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("NavigationHeaderView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        setUpAvatar()
    }
    
    private func setUpAvatar() {
        self.headerAvatarBtn.makeCircular()
        self.headerAvatarBtn.imageView?.contentMode = .scaleAspectFill
    }
    
    public func configure(heading: String, avatarImage: String? = nil, isAvatarHidden: Bool = false) {
        self.navigationHeading.text = heading
        if let avatarImage = avatarImage {
            self.headerAvatarBtn.setImage(UIImage(named: avatarImage), for: .normal)
        } else {
            self.headerAvatarBtn.setImage(UIImage(systemName: "person.circle.fill"), for: .normal)
        }
        
        if(isAvatarHidden) {
            self.headerAvatarBtn.isHidden = true
        }
    }
}
