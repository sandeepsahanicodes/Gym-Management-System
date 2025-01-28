//
//  DropDownInputField.swift
//  mobile-frontend
//
//  Created by Sandeep Sahani on 28/01/25.
//

import UIKit
import DropDown

class DropDownInputField: UIView, DropDownTextFieldDelegate {
    
    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var inputFieldHeading: UILabel!
    @IBOutlet private weak var inputTextField: DropDownTextField!
    
    private let dropDown = DropDown()
    private var dropDownElements: [String] = [] 
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
       
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("DropDownInputField", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        inputTextField.delegate = self
    }
    
    private func setUpDropDownView() {
        dropDown.anchorView = inputTextField
        dropDown.dataSource = dropDownElements
        dropDown.show()
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        
        // Setting text field text to selected drop down element
        dropDown.selectionAction = {[unowned self] (index: Int, item: String) in
            self.inputTextField.text = item
        }
    }
    
    /// Configures dropdown input field.
    /// - Parameters:
    ///   - heading: The heading or title for the input field.
    ///   - placeholder: The placeholder text displayed in the input field.
    ///   - dropDownElemets: Drop down elemets
    public func configure(heading: String, placeholder: String, dropDownElements: [String]) {
        self.inputFieldHeading.text = heading
        self.inputTextField.placeholder = placeholder
        self.dropDownElements = dropDownElements
    }
    
    func didTapTextField() {
        setUpDropDownView()
    }
}
