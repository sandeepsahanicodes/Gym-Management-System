//
//  InputField.swift
//  mobile-frontend
//
//  Created by Sandeep Sahani on 27/01/25.
//

import UIKit

public class InputField: UIView {

    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var inputFieldHeading: UILabel!
    @IBOutlet private weak var inputTextField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("InputField", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        inputTextField.placeholderColor()
        inputTextField.styleBorder()
    }
    
    /// Configures the input field.
    /// - Parameters:
    ///   - heading: The heading or title for the input field.
    ///   - placeholder: The placeholder text displayed in the input field.
    ///   - contentType: The type of content expected in the input field, used for keyboard optimization and autofill.
    public func configure(heading: String, placeholder: String, contentType: UITextContentType) {
        self.inputFieldHeading.text = heading
        self.inputTextField.placeholder = placeholder
        self.inputTextField.textContentType = contentType
        
        if contentType == .password {
            self.inputTextField.isSecureTextEntry = true
        } else {
            self.inputTextField.isSecureTextEntry = false
        }
    }
    
    
}
