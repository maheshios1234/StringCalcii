//
//  ViewController.swift
//  StringCalculator
//
//  Created by mahesh kashyap on 20/06/25.
//
enum CalculatorError: Error, LocalizedError {
    case negativeNumbersNotAllowed([Int])

    var errorDescription: String? {
        switch self {
        case .negativeNumbersNotAllowed(let numbers):
            return "negative numbers not allowed: \(numbers.map { "\($0)" }.joined(separator: ", "))"
        }
    }
}

import UIKit

class Calculator: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

