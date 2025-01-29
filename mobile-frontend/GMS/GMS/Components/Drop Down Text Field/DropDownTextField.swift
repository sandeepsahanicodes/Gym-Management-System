//
//  DropDownTextField.swift
//  GMS
//
//  Created by Sandeep Sahani on 28/01/25.
//

import UIKit

protocol DropDownTextFieldDelegate: AnyObject {
    func didTapTextField()
}

class DropDownTextField: UIView {
     
    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var inputTextField: UITextField!
    
    weak var delegate: DropDownTextFieldDelegate?
    
    var placeholder: String = "" {
        didSet {
            inputTextField.placeholder = placeholder
        }
    }
    
    var text: String = "" {
        didSet {
            inputTextField.text = text
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
        
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("DropDownTextField", owner: self)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        inputTextField.placeholderColor()
        inputTextField.styleBorder()
    }
    
    @IBAction func inputFieldTapped(_ sender: Any) {
        delegate?.didTapTextField()
    }
}
