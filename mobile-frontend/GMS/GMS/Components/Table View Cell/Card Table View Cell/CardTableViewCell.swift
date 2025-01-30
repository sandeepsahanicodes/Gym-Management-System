//
//  CardTableViewCell.swift
//  GMS
//
//  Created by Sandeep Sahani on 30/01/25.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet private weak var cardImage: UIImageView!
    @IBOutlet weak var cardForegroud: UIView!
    @IBOutlet private weak var cardName: UILabel!
    @IBOutlet private weak var cardDescription: UILabel!
    @IBOutlet private weak var foodTypeIcon: UIImageView!
    @IBOutlet private weak var cardDeleteBtn: UIButton!
    @IBOutlet private weak var cardEndDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setUpViews() {
        self.cardImage.applyCornerRadius(value: 10)
        self.cardForegroud.applyCornerRadius(value: 10)
    }
    
    /// Populates data in the card cell.
    public func configure(cardImage: UIImage, cardName: String, cardDescriptioin: String, cardEndDescription: String?, cardType: CardType) {
        self.cardImage.image = cardImage
        self.cardName.text = cardName
        self.cardDescription.text = cardDescriptioin
        self.cardEndDescription.text = cardEndDescription
        
        switch cardType {
        case .dietUser(isNonVegetarian: true):
            self.foodTypeIcon.image = UIImage(named: "non-veg-symbol")
            self.cardDeleteBtn.isHidden = true
            self.cardEndDescription.text = "Explore plan"
        case .dietUser(isNonVegetarian: false):
            self.foodTypeIcon.image = UIImage(named: "veg-symbol")
            self.cardDeleteBtn.isHidden = true
            self.cardEndDescription.text = "Explore plan"
        case .dietTrainer(isNonVegetarian: true):
            self.foodTypeIcon.image = UIImage(named: "non-veg-symbol")
            self.cardDeleteBtn.setImage(UIImage(systemName: "trash.fill"), for: .normal)
            self.cardEndDescription.text = "Explore plan"
        case .dietTrainer(isNonVegetarian: false):
            self.foodTypeIcon.image = UIImage(named: "veg-symbol")
            self.cardDeleteBtn.setImage(UIImage(systemName: "trash.fill"), for: .normal)
            self.cardEndDescription.text = "Explore plan"
        case .exerciseUser:
            self.foodTypeIcon.isHidden = true
            self.cardDeleteBtn.isHidden = true
            self.cardEndDescription.text = "Explore workout"
        case .exerciseTrainer:
            self.foodTypeIcon.isHidden = true
            self.cardDeleteBtn.setImage(UIImage(systemName: "trash.fill"), for: .normal)
            self.cardEndDescription.text = "Explore workout"
        }
    }
    
}
