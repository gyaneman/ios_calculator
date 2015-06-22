//
//  ViewController.swift
//  AppTest2
//
//  Created by 片岡崇史 on 2015/06/21.
//  Copyright (c) 2015年 gyane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculator = Calculator()
    @IBOutlet weak var labelTest: UILabel!
    @IBAction func btnAction(sender: AnyObject) {
        labelTest.text = "Hello, world"
        //calculator.inputTest(3)
        //labelTest.text = String(calculator.displayVal)
    }
    
    
    @IBAction func btn1Event(sender: AnyObject) {
        calculator.inputValue(1)
        labelTest.text = String(calculator.displayVal)
    }
    @IBAction func btn2Event(sender: AnyObject) {
        calculator.inputValue(2)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn3Event(sender: AnyObject) {
        calculator.inputValue(3)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn4Event(sender: AnyObject) {
        calculator.inputValue(4)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn5Event(sender: AnyObject) {
        calculator.inputValue(5)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn6Event(sender: AnyObject) {
        calculator.inputValue(6)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn7Event(sender: AnyObject) {
        calculator.inputValue(7)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn8Event(sender: AnyObject) {
        calculator.inputValue(8)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btn9Event(sender: AnyObject) {
        calculator.inputValue(9)
        labelTest.text = String(calculator.displayVal)
    }

    
    @IBAction func btnEqual(sender: AnyObject) {
        calculator.inputOperator(Operator.Eq)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btnAdd(sender: AnyObject) {
        calculator.inputOperator(Operator.Add)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btnSub(sender: AnyObject) {
        calculator.inputOperator(Operator.Sub)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btnMul(sender: AnyObject) {
        calculator.inputOperator(Operator.Mul)
        labelTest.text = String(calculator.displayVal)
    }
    
    @IBAction func btnDiv(sender: AnyObject) {
        calculator.inputOperator(Operator.Div)
        labelTest.text = String(calculator.displayVal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

