//
//  ViewController.swift
//  calculator
//
//  Created by Mohamed  on 8/2/16.
//  Copyright © 2016 Mohamed . All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet private weak var display: UILabel!
    
    private var userIsInTheMiddleOfTyping = false
    
    @IBAction private func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
            
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var Brain = Logic()
    @IBAction private func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                displayValue = M_PI
            } else if mathematicalSymbol == "π" {
                displayValue = sqrt(displayValue)
            }
        }
    }
}