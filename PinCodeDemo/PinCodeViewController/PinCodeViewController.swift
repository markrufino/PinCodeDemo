//
//  PinCodeViewController.swift
//  PinCodeDemo
//
//  Created by Mark on 09/09/2018.
//  Copyright © 2018 Mark. All rights reserved.
//

import UIKit

class PinCodeViewController: UIViewController {

    @IBOutlet weak var pinCodeTextField: UITextField!
    
    private let pincode = "1234"
    
    var onPinCodeEntrySuccessAction: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initViews()
    }
    
    private func initViews() {
        initPinCodeTextField()
    }
    
    private func initPinCodeTextField() {
        pinCodeTextField.placeholder = "ENTER PIN CODE"
        pinCodeTextField.textAlignment = .center
        pinCodeTextField.isSecureTextEntry = true
        
        pinCodeTextField.keyboardType = .numberPad
        let selector: Selector = #selector(pinCodeTextFieldTextChangeHandler(_:))
        pinCodeTextField.addTarget(self, action: selector, for: .editingChanged)
    }
    
    @objc private func pinCodeTextFieldTextChangeHandler(_ textField: UITextField) {
        guard let textInput = textField.text else { return }
        
        guard textInput.count <= 4 else {
            textField.text = String(textInput.prefix(4))
            return
        }
        
        if textInput == pincode {
            onPinCodeEntrySuccessAction?()
        }
        
    }

}
