//
//  ViewController.swift
//  RPN-Calculator
//
//  Created by Hayden Kua on 10/06/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stack = [String]()
    var number = ""
    var numberLength = 0

    @IBOutlet var display: UILabel!
    @IBOutlet var buttonZero: UIButton!
    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var buttonThree: UIButton!
    @IBOutlet var buttonFour: UIButton!
    @IBOutlet var buttonFive: UIButton!
    @IBOutlet var buttonSix: UIButton!
    @IBOutlet var buttonSeven: UIButton!
    @IBOutlet var buttonEight: UIButton!
    @IBOutlet var buttonNine: UIButton!
    
    @IBOutlet var evalButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var enterButton: UIButton!
    @IBOutlet var flipButton: UIButton!
    @IBOutlet var additionButton: UIButton!
    @IBOutlet var subtractButton: UIButton!
    @IBOutlet var multiplyButton: UIButton!
    @IBOutlet var divideButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func disableNumberButtons() {
        buttonZero.isEnabled = false
        buttonOne.isEnabled = false
        buttonTwo.isEnabled = false
        buttonThree.isEnabled = false
        buttonFour.isEnabled = false
        buttonFive.isEnabled = false
        buttonSix.isEnabled = false
        buttonSeven.isEnabled = false
        buttonEight.isEnabled = false
        buttonNine.isEnabled = false
    }
    
    @IBAction func buttonZeroOn(_ sender: Any) {
        if numberLength < 3 && number != "0"{
            number += "0"
            numberLength += 1
        } else if numberLength >= 3 {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonOneOn(_ sender: Any) {
        if numberLength < 3 {
            number += "1"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
        
    }
    
    @IBAction func buttonTwoOn(_ sender: Any) {
        if numberLength < 3 {
            number += "2"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonThreeOn(_ sender: Any) {
        if numberLength < 3 {
            number += "3"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonFourOn(_ sender: Any) {
        if numberLength < 3 {
            number += "4"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonFiveOn(_ sender: Any) {
        if numberLength < 3 {
            number += "5"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonSixOn(_ sender: Any) {
        if numberLength < 3 {
            number += "6"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonSevenOn(_ sender: Any) {
        if numberLength < 3 {
            number += "7"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonEightOn(_ sender: Any) {
        if numberLength < 3 {
            number += "8"
            numberLength += 1
        } else {
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonNineOn(_ sender: Any) {
       if numberLength < 3 {
           number += "9"
           numberLength += 1
       } else {
           disableNumberButtons()
       }
    }
    
    @IBAction func enterButtonToggle(_ sender: Any) {
        stack.append(number)
        numberLength = 0
        number = ""
        var calculate = Calculator(stack: stack)
        display.text = calculate.displayAll()
    }
    
    @IBAction func evalButtonToggle(_ sender: Any) {
    }
    
    @IBAction func clearButtonToggle(_ sender: Any) {
    }
    
    @IBAction func flipButtonToggle(_ sender: Any) {
    }
    
    @IBAction func additionButtonToggle(_ sender: Any) {
    }
    
    @IBAction func multiplButtonToggle(_ sender: Any) {
    }
    
    @IBAction func divideButtonToggle(_ sender: Any) {
    }
    
}


