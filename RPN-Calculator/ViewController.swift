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
    var temp = [String]()
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
        display.layer.borderWidth = 1.5
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
    
    func enableNumberButtons() {
        buttonZero.isEnabled = true
        buttonOne.isEnabled = true
        buttonTwo.isEnabled = true
        buttonThree.isEnabled = true
        buttonFour.isEnabled = true
        buttonFive.isEnabled = true
        buttonSix.isEnabled = true
        buttonSeven.isEnabled = true
        buttonEight.isEnabled = true
        buttonNine.isEnabled = true
    }
    
    
    @IBAction func buttonZeroOn(_ sender: Any) {
        number += "0"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonOneOn(_ sender: Any) {
        number += "1"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonTwoOn(_ sender: Any) {
        number += "2"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonThreeOn(_ sender: Any) {
        number += "3"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonFourOn(_ sender: Any) {
        number += "4"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonFiveOn(_ sender: Any) {
        number += "5"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonSixOn(_ sender: Any) {
        number += "6"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonSevenOn(_ sender: Any) {
        number += "7"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonEightOn(_ sender: Any) {
        number += "8"
        numberLength += 1
        display.text = number
        if numberLength > 2{
            disableNumberButtons()
        }
    }
    
    @IBAction func buttonNineOn(_ sender: Any) {
       number += "9"
       numberLength += 1
       display.text = number
       if numberLength > 2{
           disableNumberButtons()
       }
    }
    
    @IBAction func enterButtonToggle(_ sender: Any) {
        enter()
        displayEverything()
        enableNumberButtons()
    }
    
    @IBAction func evalButtonToggle(_ sender: Any) {
        let calculate = Calculator(stack: stack)
        let stackLength = stack.count
        for i in 0..<stackLength {
            temp.append(stack[i])
            if stack[i] == "+" {
                temp = calculate.add(position: i)
            } else if stack[i] == "-" {
                temp = calculate.subtract(position: i)
            } else if stack[i] == "*" {
                temp = calculate.product(position: i)
            } else if stack[i] == "/" {
                temp = calculate.divide(position: i)
            }
        }
        display.text = displayTemp()
    }
    
    func displayTemp() -> String{
        var all = ""
        let length = temp.count
        for i in 0...(length-1) {
            all += temp[i]
        all += " "
        }
        return all
    }
    
    @IBAction func clearButtonToggle(_ sender: Any) {
        number = ""
        numberLength = 0
        stack = []
        enableNumberButtons()
        display.text = " "
    }
    
    @IBAction func flipButtonToggle(_ sender: Any) {
        if Int(number) ?? 0 > 0 {
            number = "-" + number
            display.text = number
        }
        
    }
    
    @IBAction func additionButtonToggle(_ sender: Any) {
        enter()
        stack.append("+")
        displayEverything()
    }
    
    @IBAction func subtractButtonToggle(_ sender: Any) {
        enter()
        stack.append("-")
        displayEverything()
    }
    
    @IBAction func multipleButtonToggle(_ sender: Any) {
        enter()
        stack.append("*")
        displayEverything()
    }
    
    @IBAction func divideButtonToggle(_ sender: Any) {
        enter()
        stack.append("/")
        displayEverything()
    }
    
    func enter() {
        stack.append(number)
        numberLength = 0
        number = ""
    }
    
    
    func displayEverything() {
        let calculate = Calculator(stack: stack)
        display.text = calculate.displayAll()
    }
    
}


