//
//  ViewController.swift
//  Calculator
//
//  Created by Student on 17/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var calculation: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var stack: [Any] = []
    
    @IBAction func one(_ sender: Any) {
        result.text! += "1"
        stack.append(1)
    }
    
    @IBAction func plus(_ sender: Any) {
        result.text! += "+"
        stack.append("+")
    }
    @IBAction func evaluate(_ sender: Any) {
        /*let expression = NSExpression(format: result.text!)
        let resultValue = expression.expressionValue(with: nil, context: nil) as! Double
        self.result.text! = String(resultValue)*/
         for char in stack {
             
             
        }
        //result.text! = String(stack.first!)
        //calculation.text! = expression
    }
}



/*
 
 @IBOutlet weak var weightTextField: UITextField!
 @IBOutlet weak var heightTextField: UITextField!
 @IBOutlet weak var calculatedBMI: UILabel!
 override func viewDidLoad() {
     super.viewDidLoad()
     
     //
 }

 @IBAction func calculateButtonPressed(_ sender: Any) {
     let weightString = weightTextField.text ?? ""
     let weight = Double(weightString) ?? 0
     
     let heightString = heightTextField.text ?? ""
     let height = Double(heightString) ?? 0
     
     let bmi = weight / (height * height)
     calculatedBMI.text = "BMI is \(bmi)"
 
 */
