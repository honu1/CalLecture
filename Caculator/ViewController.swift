//
//  ViewController.swift
//  Caculator
//
//  Created by honu on 2017. 9. 6..
//  Copyright © 2017년 honuCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(digit) touch")
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display!.text = textCurrentlyInDisplay + digit
        } else {
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue : Double {
        get {
            return Double(display.text!)!
        }
        
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        if let mathmaticalSymbol = sender.currentTitle {
            
            switch mathmaticalSymbol {
            case "π":
                displayValue = Double.pi
                break
            case "√":
                let operand = Double(display.text!)!
                displayValue = sqrt(operand)
                break
            case "cos":
                let operand = Double(display.text!)!
                displayValue = cos(operand)
                break
            default:
                break
            }
        }
        userIsInTheMiddleOfTyping = false
    }
    
}

