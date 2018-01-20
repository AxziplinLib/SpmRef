//
//  ActionTests.swift
//  XcodebuildKitTests
//
//  Created by devedbox on 2018/1/20.
//

import XCTest
@testable import XcodebuildKit

class ActionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(SpmRef().text, "Hello, World!")
    }
    
    func testCleanCommand() {
        let Action = Xcodebuild.Action.clean
        XCTAssertEqual("clean", Action.command)
    }
    
    func testBuildCommand() {
        let Action = Xcodebuild.Action.build
        XCTAssertEqual("build", Action.command)
    }
    
    func testTestCommand() {
        let Action = Xcodebuild.Action.test
        XCTAssertEqual("test", Action.command)
    }
    
    func testInstallCommand() {
        let Action = Xcodebuild.Action.install
        XCTAssertEqual("install", Action.command)
    }
    
    func testInstallSrcCommand() {
        let Action = Xcodebuild.Action.installSrc
        XCTAssertEqual("install-src", Action.command)
    }
    
    func testAnalyzeCommand() {
        let Action = Xcodebuild.Action.analyze
        XCTAssertEqual("analyze", Action.command)
    }
    
    func testArchiveCommand() {
        let Action = Xcodebuild.Action.archive
        XCTAssertEqual("archive", Action.command)
    }
    
    func testBuildForTestingCommand() {
        let Action = Xcodebuild.Action.buildForTesting
        XCTAssertEqual("build-for-testing", Action.command)
    }
    
    func testTestWithoutBuildingCommand() {
        let Action = Xcodebuild.Action.testWithoutBuilding
        XCTAssertEqual("test-without-building", Action.command)
    }
    
    func testCleanBuildCommand() {
        let Action: Xcodebuild.Action = [.build, .clean]
        XCTAssertEqual("build clean", Action.command)
    }
    
    func testNullCommand() {
        let Action: Xcodebuild.Action = []
        XCTAssertEqual("", Action.command)
    }
    
    static var allTests = [
        ("testExample", testExample),
        ("testCleanCommand", testCleanCommand),
        ("testTestCommand", testTestCommand),
        ("testInstallCommand", testInstallCommand),
        ("testInstallSrcCommand", testInstallSrcCommand),
        ("testAnalyzeCommand", testAnalyzeCommand),
        ("testArchiveCommand", testArchiveCommand),
        ("testBuildForTestingCommand", testBuildForTestingCommand),
        ("testTestWithoutBuildingCommand", testTestWithoutBuildingCommand),
        ("testCleanBuildCommand", testCleanBuildCommand),
        ("testNullCommand", testNullCommand),
    ]
}
