//
//  Extension+UIView.swift
//  GMS
//
//  Created by Sandeep Sahani on 29/01/25.
//

import UIKit

extension UIView {
    /// Makes a view circular.
    public func makeCircular() {
        self.layer.cornerRadius = self.layer.bounds.width / 2
        self.clipsToBounds = true
    }
    
    /// Adds corner radius to the view.
    public func applyCornerRadius(value: CGFloat) {
        self.layer.cornerRadius = value
        self.layer.masksToBounds = true
    }
    
    public func styleBorder(color: UIColor = UIColor.black, width: CGFloat = 1, cornerRadius: CGFloat = 5) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
        self.layer.cornerRadius = cornerRadius
    }
    
}
