//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Bathiya Pathum on 2023-04-29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorWorkings: UILabel!
    
    @IBOutlet weak var calculatorResult: UILabel!
    
    
    var working:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }
    
    func clearAll(){
        working = ""
        calculatorWorkings.text = ""
        calculatorResult.text = ""
    }
    
    @IBAction func equalsTap(_ sender: Any) {
        let expression  = NSExpression(format: working)
        let result = expression.expressionValue(with: nil , context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResult.text = resultString
    }
    
    func formatResult(result: Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
        if(!working.isEmpty){
            working.removeLast()
            calculatorWorkings.text = working
        }
    }
    
    func addToWorkings(value:String){
        working = working + value
        calculatorWorkings.text = working
    }
    
    @IBAction func percentTap(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    @IBAction func devideTap(_ sender: Any) {
        addToWorkings(value: "/")
    }
    
    @IBAction func timesTap(_ sender: Any) {
        addToWorkings(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorkings(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToWorkings(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    
    
}

