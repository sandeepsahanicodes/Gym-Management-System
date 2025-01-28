//
//  Extension+UITextField.swift
//  GMS
//
//  Created by Sandeep Sahani on 28/01/25.
//

import UIKit

extension UITextField {
    public func styleBorder(color: UIColor = UIColor.black, width: CGFloat = 1, cornerRadius: CGFloat = 5) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
        self.layer.cornerRadius = cornerRadius
    }
}
