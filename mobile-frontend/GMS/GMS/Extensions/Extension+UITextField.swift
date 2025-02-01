//
//  Extension+UITextField.swift
//  GMS
//
//  Created by Sandeep Sahani on 28/01/25.
//

import UIKit

extension UITextField {

    public func placeholderColor(color: UIColor = .lightGray) {
        attributedPlaceholder = NSAttributedString(
            string: "Placeholder Text",
            attributes: [NSAttributedString.Key.foregroundColor: color]
        )
    }
}
