//
//  Calculator.swift
//  AppTest2
//
//  Created by 片岡崇史 on 2015/06/21.
//  Copyright (c) 2015年 gyane. All rights reserved.
//

import Foundation

enum Operator{
    case None
    case Add
    case Sub
    case Mul
    case Div
    case Eq
}

class Calculator {
    private var state : Int = 0
    private var val1 : Int = 0
    private var val2 : Int = 0
    private var ope : Operator = Operator.None
    
    var displayVal = 0
    
    init() {
        initState()
        displayVal = 0
    }
    
    func initState(){
        self.state = 0
        self.val1 = 0
        self.val2 = 0
        self.ope = Operator.None
    }
    
    /*func inputTest(val:Int) {
        self.val1 = self.val1 * 10 + val
        self.displayVal = self.val1
    }*/
    /*
    func setOperator(arg:Operator){
        self.ope = arg
        self.displayVal = calc()
    }*/
    
    func inputValue(val:Int){
        switch self.state {
        case 0:
            self.val1 = (self.val1 * 10) + val
            self.displayVal = self.val1
        case 1:
            self.state = 2
            self.val2 = (self.val2 * 10) + val
            self.displayVal = self.val2
        case 2:
            self.val2 = (self.val2 * 10) + val
            self.displayVal = self.val2
        default:
            initState()
        }
        println(state)
    }
    
    func inputOperator(arg:Operator){
        if arg == Operator.Eq {
            self.displayVal = calc()
            initState()
            println(state)
            return
        }
        switch self.state {
        case 0:
            self.state = 1
            self.ope = arg
        case 1:
            self.ope = arg
        case 2:
            self.val1 = calc()
            self.state = 1
            self.ope = arg
        default:
            initState()
        }
        println(state)
    }
    
    func calc() -> Int{
        var retVal:Int
        switch self.ope {
        case Operator.Add:
            retVal = val1 + val2
        case Operator.Sub:
            retVal = val1 - val2
        case Operator.Mul:
            retVal = val1 * val2
        case Operator.Div:
            retVal = val1 / val2
        default:
            retVal = 0
        }
        return retVal
    }
}