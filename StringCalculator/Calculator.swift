//
//  ViewController.swift
//  StringCalculator
//
//  Created by mahesh kashyap on 20/06/25.
//
import UIKit
enum CalculatorError: Error, LocalizedError {
    case negativeNumbersNotAllowed([Int])

    var errorDescription: String? {
        switch self {
        case .negativeNumbersNotAllowed(let numbers):
            return "negative numbers not allowed: \(numbers.map { "\($0)" }.joined(separator: ", "))"
        }
    }
}
class Calculator {
    func add(_ input: String) throws -> Int {
        guard !input.isEmpty else { return 0 }

        var numbersString = input
        var delimiters = [",", "\n"]

        if numbersString.hasPrefix("//") {
            let parts = numbersString.components(separatedBy: "\n")
            if parts.count >= 2 {
                let delimiterLine = parts[0].dropFirst(2)
                delimiters = [String(delimiterLine)]
                numbersString = parts.dropFirst().joined(separator: "\n")
            }
        }

        let components = numbersString.components(separatedBy: CharacterSet(charactersIn: delimiters.joined()))
        let numbers = components.compactMap { Int($0) }

        let negatives = numbers.filter { $0 < 0 }
        if !negatives.isEmpty {
            throw CalculatorError.negativeNumbersNotAllowed(negatives)
        }

        return numbers.reduce(0, +)
    }
}



