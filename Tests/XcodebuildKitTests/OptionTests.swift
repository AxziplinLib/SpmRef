//
//  OptionTests.swift
//  XcodeBuildKitTests
//
//  Created by devedbox on 2018/1/24.
//

import XCTest
@testable import XcodeBuildKit

class OptionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(SpmRef().text, "Hello, World!")
    }
    
    func testOptionCommand() {
        let option: XcodeBuild.Option = .project(named: "XcodeBuildKit")
        XCTAssertEqual("-project XcodeBuildKit", option.command)
    }
    
    func testOptionArguments() {
        let option: XcodeBuild.Option = .project(named: "XcodeBuildKit")
        XCTAssertEqual(["-project", "XcodeBuildKit"], option.arguments)
    }
    
    static var allTests = [
        ("testExample", testExample),
    ]
}

