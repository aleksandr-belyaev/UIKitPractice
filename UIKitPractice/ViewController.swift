//
//  ViewController.swift
//  UIKitPractice
//
//  Created by Александр Беляев on 29.12.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultField: UILabel!
    
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multipleButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    var firstNum = 0
    var secondNum = 0
    var currentACtion = ""
    
    @IBAction func acButtonClick(_ sender: UIButton) {
        resultField.text = "0"
    }
    @IBAction func plusMinusButtonClick(_ sender: UIButton) {
    }
    @IBAction func percentButtonClick(_ sender: UIButton) {
    }
    @IBAction func divideButtonClick(_ sender: UIButton) {
    }
    @IBAction func multipleButtonClick(_ sender: UIButton) {
    }
    @IBAction func minusButtonClick(_ sender: UIButton) {
    }
    @IBAction func plusButtonClick(_ sender: UIButton) {
    }
    @IBAction func equalsButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func dotButtonClick(_ sender: UIButton) {
        if !(resultField.text?.contains(".") ?? false) {
            resultField.text?.append(".")
        }
    }
    @IBAction func nineButtonClick(_ sender: UIButton) {
        resultField.text?.append("9")
    }
    @IBAction func eightButtonClick(_ sender: UIButton) {
        resultField.text?.append("8")
    }
    @IBAction func sevenButtonClick(_ sender: UIButton) {
        resultField.text?.append("7")
    }
    @IBAction func sixButtonClick(_ sender: UIButton) {
        resultField.text?.append("6")
    }
    @IBAction func fiveButtonClick(_ sender: UIButton) {
        resultField.text?.append("5")
    }
    @IBAction func fourButtonClick(_ sender: UIButton) {
        resultField.text?.append("4")
    }
    @IBAction func threeButtonClick(_ sender: UIButton) {
        resultField.text?.append("3")
    }
    @IBAction func twoButtonClick(_ sender: UIButton) {
        resultField.text?.append("2")
    }
    @IBAction func oneButtonClick(_ sender: UIButton) {
        resultField.text?.append("1")
    }
    @IBAction func zeroButtonClick(_ sender: UIButton) {
        resultField.text?.append("0")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultField.text = "0"
        // Do any additional setup after loading the view.
    }

}

extension String {
    mutating func append(_ additionalValue: String) {
        self = (self == "0" || self.isEmpty) ? additionalValue : self+additionalValue
    }
}

