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
    
    func calculateAll() -> String{
        print(stack)
        var resultStack = [Int]()
        for i in 0...(stack.count-1) {
            if stack[i] == "+" {
                let no1 = Int(resultStack.removeLast())
                let no2 = Int(resultStack.removeLast())
                resultStack.append(no1 + no2)
            } else if stack[i] == "-" {
                let no1 = Int(resultStack.removeLast())
                let no2 = Int(resultStack.removeLast())
                resultStack.append(no2 - no1)
            } else if stack[i] == "*" {
                let no1 = Int(resultStack.removeLast())
                let no2 = Int(resultStack.removeLast())
                resultStack.append(no1 * no2)
            } else if stack[i] == "/" {
                let no1 = Int(resultStack.removeLast())
                let no2 = Int(resultStack.removeLast())
                resultStack.append(no2 / no1)
            } else {
                resultStack.append(Int(stack[i]) ?? 0)
            }
        }
        let finalAnswer = resultStack[0]
        return String(finalAnswer)
    }
}
