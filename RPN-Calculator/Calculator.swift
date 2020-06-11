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
    
    func add() -> Int{
        let length = stack.count
        let num1 = Int(stack[length]) ?? 0
        let num2 = Int(stack[length-1]) ?? 0
        let sum = num1 + num2
        return sum
    }
    
    func subtract() -> Int{
        let length = stack.count
        let num1 = Int(stack[length]) ?? 0
        let num2 = Int(stack[length-1]) ?? 0
        let result = num2 - num1
        return result
    }
    
    func product() -> Int{
        let length = stack.count
        let num1 = Int(stack[length]) ?? 0
        let num2 = Int(stack[length-1]) ?? 0
        let result = num2 * num1
        return result
    }
    
    func divide() -> Int{
        let length = stack.count
        let num1 = Int(stack[length]) ?? 0
        let num2 = Int(stack[length-1]) ?? 0
        let result = num2 / num1
        return result
    }
}
