//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var typedNumberFinished : Bool = true
    
    private var displayValue: Double {
        // 1! <-"estoy segur d q hay texto aqi" 2! <-"se q va a funcionr siempx"
        get {
            guard let number = Double(displayLabel.text!) else {
                    fatalError("cannot convert display label text to a Double")
                }
        return number
     }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    private var calculator = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
    typedNumberFinished = true
        calculator.setNumber(displayValue)
        if let calcMethod = sender.currentTitle {
            
           if let result = calculator.calculate(symbol: calcMethod) {
            displayValue = result
        }
        //    guard let result = calculator.calculate(symbol: calcMethod) else {
       //         fatalError("The result of the calculation is nil")
       //    }
     //   displayValue = result <- el mismo codigo de arriba pero con GUARD no IF(ver video diferencias)
    }
    }
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            
            if typedNumberFinished {
                displayLabel.text = numValue
                typedNumberFinished = false
            } else {
                if numValue == "." {
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
        
    }

}


