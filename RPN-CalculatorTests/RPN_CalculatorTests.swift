//
//  RPN_CalculatorTests.swift
//  RPN-CalculatorTests
//
//  Created by Hayden Kua on 10/06/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import XCTest
@testable import RPN_Calculator

class RPN_CalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSimpleTwoNumberCalculationsReturnsCorrectAnswer(){
        let testCases = [(input: ["4","5","+"], expected: "9"), (input: ["6","4","-"], expected: "2"), (input: ["5","10","*"], expected: "50"), (input: ["9","3","/"], expected: "3")]
        
        for testCase in testCases {
            let calculator = Calculator(stack: testCase.input)
            let actual = calculator.calculateAll()
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMoreComplexCalculationsReturnsCorrectAnswer(){
        let testCases = [(input: ["4","5","+","3","/"], expected: "3"), (input: ["6","4","-","5","+"], expected: "7"), (input: ["5","10","*","25","-"], expected: "25"), (input: ["3","5","*","4","4","*","-"], expected: "-1")]
        
        for testCase in testCases {
            let calculator = Calculator(stack: testCase.input)
            let actual = calculator.calculateAll()
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testIfInvalidExpressionIsEnteredReturnErrorMessage() {
        let testCases = [(input: ["-","+","5"], expected: "Invalid Expression! You must at least have two numbers followed by an operator."), (input: ["+"], expected: "Invalid Expression! You must at least have two numbers followed by an operator."), (input: ["5","+","-"], expected: "Invalid Expression! You must at least have two numbers followed by an operator."), (input: ["5"], expected: "Invalid Expression! You must at least have two numbers followed by an operator.")]

        for testCase in testCases {
            let calculator = Calculator(stack: testCase.input)
            let actual = calculator.calculateAll()
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    

}


