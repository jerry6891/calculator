//
//  ViewController.swift
//  calculatorAssignment
//
//  Created by Rex Karnufex on 2018-04-16.
//  Copyright © 2018 GWEB. All rights reserved.
//

import UIKit

class CalculatorController: UIViewController {
    
    // Numbers variable.
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    var runningNumber = ""
    
    @IBOutlet var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true{
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else {
            label.text = label.text! + String(sender.tag-1)
            runningNumber = "\(sender.tag-1)"
            runningNumber = label.text!
            // label.text = label.text
            // Numbers displayed on screen.
            numberOnScreen = Double(label.text!)!
        }
    }
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            previousNumber = Double(label.text!)!
            
            // Operational functions.
            if sender.tag == 12 {           // Divide Access
                label.text = label.text
            } else if sender.tag == 13 {    // Multiply Access
                label.text = label.text
            } else if sender.tag == 14 {    // Minus Access
                label.text = label.text
            } else if sender.tag == 15 {    // Plus Access
                label.text =  label.text
            }
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 16{
            if operation == 12{ label.text = String(previousNumber / numberOnScreen) }
            else if operation == 13{ label.text = String(previousNumber * numberOnScreen) }
            else if operation == 14{ label.text = String(previousNumber - numberOnScreen) }
            else if operation == 15{ label.text = String(previousNumber + numberOnScreen) }
            
            if(Double(label.text!)!.truncatingRemainder(dividingBy: 1) == 0){
                label.text = "\(Int(Double(label.text!)!))"
            }
        }
        else if sender.tag == 11 {
            label.text = "0"
            runningNumber = "\(sender.tag-1)"
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // label.text = "0"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
