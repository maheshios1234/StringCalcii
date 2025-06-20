//
//  StringCalciiVc.swift
//  StringCalculator
//
//  Created by mahesh kashyap on 20/06/25.
//

import UIKit

class StringCalciiVc: UIViewController {

    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculatorTapped(_ sender: Any) {
        let calculator = Calculator()
                do {
                    let result = try calculator.add(inputTextField.text ?? "")
                    resultLbl.text = "Result: \(result)"
                } catch {
                    resultLbl.text = error.localizedDescription
                }
    }
 

}
