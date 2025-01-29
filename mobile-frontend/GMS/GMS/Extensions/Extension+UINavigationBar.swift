//
//  Extension+UINavigationBar.swift
//  GMS
//
//  Created by Sandeep Sahani on 29/01/25.
//

import UIKit

extension UINavigationBar {
    open override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
}
