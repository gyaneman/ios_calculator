//
//  CalculatorTest.swift
//  AppTest2
//
//  Created by 片岡崇史 on 2015/07/02.
//  Copyright (c) 2015年 gyane. All rights reserved.
//

import UIKit
import XCTest

class CalculatorTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testCalcAdd(){
        var calculator = Calculator();
        var isOK : Bool = false;
        calculator.inputValue(4);
        if calculator.displayVal != 4 {
            XCTAssert(false, "ok!");
        }
        calculator.inputValue(3);
        if calculator.displayVal != 43 {
            XCTAssert(false, "ok!");
        }
        
        calculator.inputOperator(Operator.Add);
        
        calculator.inputValue(2);
        if calculator.displayVal != 2 {
            XCTAssert(false, "ok!");
        }
        calculator.inputValue(9);
        if calculator.displayVal != 29 {
            XCTAssert(false, "ok!");
        }
        calculator.inputOperator(Operator.Eq);
        if calculator.displayVal != 72{
            XCTAssert(false, "ok!");
        }
    }

}
