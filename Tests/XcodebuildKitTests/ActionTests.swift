//
//  ActionTests.swift
//  XcodeBuildKitTests
//
//  Created by devedbox on 2018/1/20.
//

import XCTest
@testable import XcodeBuildKit

class ActionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(SpmRef().text, "Hello, World!")
    }
    
    func testCleanCommand() {
        let action = XcodeBuild.Action.clean
        XCTAssertEqual("clean", action.command)
    }
    
    func testBuildCommand() {
        let action = XcodeBuild.Action.build
        XCTAssertEqual("build", action.command)
    }
    
    func testTestCommand() {
        let action = XcodeBuild.Action.test
        XCTAssertEqual("test", action.command)
    }
    
    func testInstallCommand() {
        let action = XcodeBuild.Action.install
        XCTAssertEqual("install", action.command)
    }
    
    func testInstallSrcCommand() {
        let action = XcodeBuild.Action.installSrc
        XCTAssertEqual("install-src", action.command)
    }
    
    func testAnalyzeCommand() {
        let action = XcodeBuild.Action.analyze
        XCTAssertEqual("analyze", action.command)
    }
    
    func testArchiveCommand() {
        let action = XcodeBuild.Action.archive
        XCTAssertEqual("archive", action.command)
    }
    
    func testBuildForTestingCommand() {
        let action = XcodeBuild.Action.buildForTesting
        XCTAssertEqual("build-for-testing", action.command)
    }
    
    func testTestWithoutBuildingCommand() {
        let action = XcodeBuild.Action.testWithoutBuilding
        XCTAssertEqual("test-without-building", action.command)
    }
    
    func testCleanBuildCommand() {
        let action: XcodeBuild.Action = [.build, .clean]
        XCTAssertEqual("build clean", action.command)
        XCTAssertEqual(["build", "clean"], action.arguments)
    }
    
    func testNullCommand() {
        let action: XcodeBuild.Action = []
        XCTAssertEqual("", action.command)
    }
    
    func testMultipleActions() {
        let action: XcodeBuild.Action = [.build, .clean, .test]
        XCTAssertEqual("test build clean", action.command)
        XCTAssertEqual(["test", "build", "clean"], action.arguments)
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
        ("testMultipleActions", testMultipleActions),
    ]
}
