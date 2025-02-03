//
//  InfoTableViewCell.swift
//  GMS
//
//  Created by Sandeep Sahani on 30/01/25.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var infoDescription: UILabel!
    @IBOutlet weak var macroInfo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configure(heading: String, infoDescription: String, infoType: InfoType) {
        self.heading.text = heading
        self.infoDescription.text = infoDescription
        switch infoType {
        case .dietInfo(let macroInfo):
            self.macroInfo.isHidden = false
            self.macroInfo.text = macroInfo
        case .exerciseInfo:
            self.macroInfo.isHidden = true
        case .footerMacroInfo:
            self.macroInfo.isHidden = true
            self.contentView.styleBorder()
            self.contentView.backgroundColor = .white
            self.infoDescription.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        }
    }
    
}
