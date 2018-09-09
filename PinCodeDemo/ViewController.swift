//
//  ViewController.swift
//  PinCodeDemo
//
//  Created by Mark on 09/09/2018.
//  Copyright © 2018 Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async {
            self.startAnimatingLabel()
        }
    }
    
    private func startAnimatingLabel() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.animatedLabel.transform = CGAffineTransform(translationX: 0, y: 16)
        })
    }
    
}

