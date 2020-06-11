//
//  Calculator.swift
//  RPN-Calculator
//
//  Created by Hayden Kua on 10/06/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import Foundation

class Calculator{
    
    private var stack: [String]
    
    init(stack: [String]) {
        self.stack = stack
    }
    
    func displayAll() -> String{
        var all = ""
        let length = stack.count
        for i in 0...(length-1) {
            all += stack[i]
        all += " "
        }
        return all
    }
    
    func add(position: Int) -> [String]{
        var temp1 = [String]()
        let num1 = Int(stack[position-1]) ?? 0
        let num2 = Int(stack[position-2]) ?? 0
        let result = num1 + num2
        temp1.append(String(result))
        return temp1
    }
    
    func subtract(position: Int) -> [String]{
        var temp1 = [String]()
        let num1 = Int(stack[position-1]) ?? 0
        let num2 = Int(stack[position-2]) ?? 0
        let result = num2 - num1
        temp1.append(String(result))
        return temp1
    }
    
    func product(position: Int) -> [String]{
        var temp1 = [String]()
        let num1 = Int(stack[position-1]) ?? 0
        let num2 = Int(stack[position-2]) ?? 0
        let result = num2 * num1
        temp1.append(String(result))
        return temp1
    }
    
    func divide(position: Int) -> [String]{
        var temp1 = [String]()
        let num1 = Int(stack[position-1]) ?? 0
        let num2 = Int(stack[position-2]) ?? 0
        let result = num2 / num1
        temp1.append(String(result))
        return temp1
    }
}
