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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initViews()
    }
    
    private func initViews() {
        initPinCodeTextField()
    }
    
    private func initPinCodeTextField() {
        pinCodeTextField.placeholder = "PIN CODE"
        pinCodeTextField.textAlignment = .center
        pinCodeTextField.isSecureTextEntry = true
    }

}
