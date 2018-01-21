//
//  DestinationTests.swift
//  XcodebuildKitTests
//
//  Created by devedbox on 2018/1/21.
//

import XCTest
@testable import XcodebuildKit

class DestinationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(SpmRef().text, "Hello, World!")
    }
    
    func testMacOSDestination() {
        let macOS_x86_64 = Xcodebuild.Destination.macOS()
        XCTAssertEqual("'platform=macOS,arch=x86_64'", macOS_x86_64.command)
        let macOS_i386 = Xcodebuild.Destination.macOS(.i386)
        XCTAssertEqual("'platform=macOS,arch=i386'", macOS_i386.command)
    }
    
    func testIOSDestination() {
        let iOS = Xcodebuild.Destination.iOS(.iPhone6)
        XCTAssertEqual("'platform=iOS,name=iPhone 6'", iOS.command)
        let iOS_id = Xcodebuild.Destination.iOS(.iPhone6s, id: "6s")
        XCTAssertEqual("'platform=iOS,name=iPhone 6s,id=6s'", iOS_id.command)
        
        let iOSSimulator = Xcodebuild.Destination.iOSSimulator(.iPhone6, id: nil, OS: "11.2")
        XCTAssertEqual("'platform=iOS Simulator,name=iPhone 6,OS=11.2'", iOSSimulator.command)
    }
    
    static var allTests = [
        ("testExample", testExample),
        ("testMacOSDestination", testMacOSDestination),
    ]
}

