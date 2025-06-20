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

}

