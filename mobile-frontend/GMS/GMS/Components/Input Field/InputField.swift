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
    public func configure(heading: String, text: String? = nil, placeholder: String, contentType: UITextContentType) {
        self.inputFieldHeading.text = heading
        if let text = text {
            self.inputTextField.text = text
        }
        self.inputTextField.placeholder = placeholder
        self.inputTextField.textContentType = contentType
        
        if contentType == .password {
            self.inputTextField.isSecureTextEntry = true
        } else {
            self.inputTextField.isSecureTextEntry = false
        }
    }
    /// Returns input field text when its not empty.
    public func getText() -> String? {
        guard let text = inputTextField.text, !text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return nil
        }
        return text.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    
}
