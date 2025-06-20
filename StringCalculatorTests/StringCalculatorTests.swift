//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by mahesh kashyap on 20/06/25.
//

import XCTest
@testable import StringCalculator

final class StringCalculatorTests: XCTestCase {

    func testEmptyStringReturnsZero() throws {
        let calculator = Calculator()
        XCTAssertEqual(try calculator.add(""), 0)
    }
    func testSingleNumberReturnsSameNumber() throws {
        let calculator = Calculator()
        XCTAssertEqual(try calculator.add("1"), 1)
    }
    
    
    func testCustomDelimiterSemicolonReturnsSum() throws {
        let calculator = Calculator()
        XCTAssertEqual(try calculator.add("//;\n1;2"), 3)
    }
    
    func testNegativeNumberThrowsError() {
        let calculator = Calculator()
        XCTAssertThrowsError(try calculator.add("-1")) { error in
            XCTAssertEqual(error.localizedDescription, "negative numbers not allowed: -1")
        }
    }
    func testMultipleNegativeNumbersThrowsErrorWithAllInMessage() {
        let calculator = Calculator()
        XCTAssertThrowsError(try calculator.add("-1,-2,3")) { error in
            XCTAssertEqual(error.localizedDescription, "negative numbers not allowed: -1, -2")
        }
        
    }

}

