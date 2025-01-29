//
//  DashboardCard.swift
//  GMS
//
//  Created by Sandeep Sahani on 29/01/25.
//

import UIKit

class DashboardCard: UIView {
    
    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var iconContainer: UIView!
    @IBOutlet private weak var icon: UIImageView!
    @IBOutlet private weak var value: UILabel!
    @IBOutlet private weak var cardDescription: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("DashboardCard", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        setUpViews()
    }
    
    private func setUpViews() {
        self.iconContainer.makeCircular()
        self.containerView.applyCornerRadius(value: 10)
    }
    
    /// Configure card data.
    public func configure(icon: String, iconBgColor: UIColor, value: String, cardDescription: String) {
        self.icon.image = UIImage(systemName: icon)
        self.iconContainer.backgroundColor = iconBgColor
        self.value.text = value
        self.cardDescription.text = cardDescription
    }
    
}
