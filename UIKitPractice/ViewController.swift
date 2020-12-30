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
    
    @IBOutlet weak var firstNumField: UILabel!
    
    var firstNum: Float = 0.0 {
        didSet {
            firstNumField.text = String(firstNum)
        }
    }
    var secondNum: Float = 0.0
    var currentAction: Actions = .empty
    
    @IBAction func acButtonClick(_ sender: UIButton) {
        resultField.text = "0"
        firstNum = 0.0
        secondNum = 0.0
    }
    @IBAction func plusMinusButtonClick(_ sender: UIButton) {
    }
    @IBAction func percentButtonClick(_ sender: UIButton) {
        actionButtonClicked(.percent)
    }
    @IBAction func divideButtonClick(_ sender: UIButton) {
        actionButtonClicked(.divide)
    }
    @IBAction func multipleButtonClick(_ sender: UIButton) {
        actionButtonClicked(.multiple)
    }
    @IBAction func minusButtonClick(_ sender: UIButton) {
        actionButtonClicked(.minus)
    }
    @IBAction func plusButtonClick(_ sender: UIButton) {
        actionButtonClicked(.plus)
    }
    @IBAction func equalsButtonClick(_ sender: UIButton) {
        secondNum = Float(resultField.text!) ?? 0.0
        switch currentAction {
            case .plus:
                resultField.text = String(firstNum + secondNum )
            case .minus:
                resultField.text = String(firstNum - secondNum )
            case .multiple:
                resultField.text = String(firstNum * secondNum )
            case .divide:
                resultField.text = String(Float(firstNum/secondNum))
            case .percent:
                resultField.text = String(firstNum.truncatingRemainder(dividingBy: secondNum))
            default:
                resultField.text = "0"
        }
        
        firstNum = 0.0
        secondNum = 0.0
        currentAction = .empty
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
    
    func actionButtonClicked(_ action: Actions) {
        if firstNum == 0.0, secondNum == 0.0 {
            firstNum = Float(resultField.text!) ?? 0.0
            resultField.text = "0"
            currentAction = action
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultField.text = "0"
        firstNumField.text = String(firstNum)
        // Do any additional setup after loading the view.
    }

}

extension String {
    mutating func append(_ additionalValue: String) {
        self = (self == "0" || self.isEmpty ) ? additionalValue : self+additionalValue
    }
}

enum Actions {
    case plus
    case minus
    case multiple
    case divide
    case percent
    case empty
}

