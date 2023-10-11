//
//  TestingDemoTests.swift
//  TestingDemoTests
//
//  Created by Neosoft on 11/10/23.
//

import XCTest
@testable import TestingDemo

final class TestingDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {

    }
    
    //MARK: - MathOperation Tests
    func testAdd(){
        let math = MathOperations()
        let sum = math.add(a: 3, b: 3)
        XCTAssertEqual(sum, 6)
    }
    
    func testMultiply(){
        let math = MathOperations()
        let product = math.multiply(a: 3, b: 3)
        XCTAssertEqual(product, 9)
    }
    
    func testDivide(){
        let math = MathOperations()
        let quotient = math.divide(a: 3, b: 3)
        XCTAssertEqual(quotient, 1)
    }
}
