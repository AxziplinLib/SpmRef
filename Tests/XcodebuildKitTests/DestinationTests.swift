//
//  DestinationTests.swift
//  XcodeBuildKitTests
//
//  Created by devedbox on 2018/1/21.
//

import XCTest
@testable import XcodeBuildKit

class DestinationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(SpmRef().text, "Hello, World!")
    }
    
    func testMacOSDestination() {
        let macOS_x86_64 = XcodeBuild.Destination.macOS()
        XCTAssertEqual("'platform=macOS,arch=x86_64'", macOS_x86_64.command)
        XCTAssertEqual(["'platform=macOS,arch=x86_64'"], macOS_x86_64.arguments)
        let macOS_i386 = XcodeBuild.Destination.macOS(.i386)
        XCTAssertEqual("'platform=macOS,arch=i386'", macOS_i386.command)
        XCTAssertEqual(["'platform=macOS,arch=i386'"], macOS_i386.arguments)
    }
    
    func testIOSDestination() {
        let iOS = XcodeBuild.Destination.iOS(.iPhone6)
        XCTAssertEqual("'platform=iOS,name=iPhone 6'", iOS.command)
        XCTAssertEqual(["'platform=iOS,name=iPhone 6'"], iOS.arguments)
        let iOS_id = XcodeBuild.Destination.iOS(.iPhone6s, id: "6s")
        XCTAssertEqual("'platform=iOS,name=iPhone 6s,id=6s'", iOS_id.command)
        XCTAssertEqual(["'platform=iOS,name=iPhone 6s,id=6s'"], iOS_id.arguments)
        
        let iOSSimulator = XcodeBuild.Destination.iOSSimulator(.iPhone6, id: nil, OS: "11.2")
        XCTAssertEqual("'platform=iOS Simulator,name=iPhone 6,OS=11.2'", iOSSimulator.command)
        XCTAssertEqual(["'platform=iOS Simulator,name=iPhone 6,OS=11.2'"], iOSSimulator.arguments)
    }
    
    static var allTests = [
        ("testExample", testExample),
        ("testMacOSDestination", testMacOSDestination),
    ]
}

