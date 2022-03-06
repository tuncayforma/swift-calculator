//
//  ViewController.swift
//  calculator
//
//  Created by Tuncay FORMA on 6.03.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var resultText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sum(_ sender: Any) {
        dortIslem(islem: "sum")
    }
    @IBAction func minus(_ sender: Any) {
        dortIslem(islem: "minus")
    }
    @IBAction func divide(_ sender: Any) {
        dortIslem(islem: "divide")
    }
    @IBAction func cross(_ sender: Any) {
        dortIslem(islem: "cross")
    }
    func dortIslem(islem:String){
        let number1 = (Int(number1.text!) ?? 0)
        let number2 = (Int(number2.text!) ?? 0)
        switch islem{
        case "sum":
            let result = number1+number2;
            resultText.text = "Result: " + String(result)
        case "minus":
            let result = number1-number2;
            resultText.text = "Result: " + String(result)
        case "cross":
            let result = number1*number2;
            resultText.text = "Result: " + String(result)
        case "divide":
            if number2 == 0 {
                resultText.text = "0 is not divisible"
            }else{
                let result = number1/number2;
                resultText.text = "Result: " + String(result)
            }
        default:
            resultText.text = "Error"
        }
    }
}

