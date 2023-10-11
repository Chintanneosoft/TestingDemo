//
//  TestingDemoUITests.swift
//  TestingDemoUITests
//
//  Created by Neosoft on 11/10/23.
//

import XCTest

final class TestingDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let decrementStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Decrement"]/*[[".buttons[\"Decrement\"].staticTexts[\"Decrement\"]",".staticTexts[\"Decrement\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        decrementStaticText.tap()
        
        let element = app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.tap()
        decrementStaticText.tap()
        decrementStaticText.tap()
        
        let incrementStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Increment"]/*[[".buttons[\"Increment\"].staticTexts[\"Increment\"]",".staticTexts[\"Increment\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        incrementStaticText.tap()
        incrementStaticText.tap()
        incrementStaticText.tap()
        decrementStaticText.tap()
        element.tap()
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
