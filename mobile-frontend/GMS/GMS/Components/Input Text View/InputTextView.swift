//
//  InputTextView.swift
//  GMS
//
//  Created by Sandeep Sahani on 06/02/25.
//

import UIKit

class InputTextView: UIView {
   
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed(String(describing: InputTextView.self), owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        self.inputTextView.applyCornerRadius(value: 5)
        self.inputTextView.styleBorder()
        
    }
    /// Set the text view.
    public func configure(heading: String, text: String) {
        self.heading.text = heading
        self.inputTextView.text = text
    }
    /// Returns text from the text view, if present.
    public func getText() -> String? {
        guard let text = inputTextView.text, !text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return nil
        }
        return text.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
