//
//  SubCommandTests.swift
//  XcodebuildKitTests
//
//  Created by devedbox on 2018/1/20.
//

import XCTest
@testable import XcodebuildKit

class SubCommandTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(SpmRef().text, "Hello, World!")
    }
    
    func testCleanCommand() {
        let subcommand = Xcodebuild.SubCommand.clean
        XCTAssertEqual("clean", subcommand.command)
    }
    
    func testBuildCommand() {
        let subcommand = Xcodebuild.SubCommand.build
        XCTAssertEqual("build", subcommand.command)
    }
    
    func testTestCommand() {
        let subcommand = Xcodebuild.SubCommand.test
        XCTAssertEqual("test", subcommand.command)
    }
    
    func testInstallCommand() {
        let subcommand = Xcodebuild.SubCommand.install
        XCTAssertEqual("install", subcommand.command)
    }
    
    func testInstallSrcCommand() {
        let subcommand = Xcodebuild.SubCommand.installSrc
        XCTAssertEqual("install-src", subcommand.command)
    }
    
    func testAnalyzeCommand() {
        let subcommand = Xcodebuild.SubCommand.analyze
        XCTAssertEqual("analyze", subcommand.command)
    }
    
    func testArchiveCommand() {
        let subcommand = Xcodebuild.SubCommand.archive
        XCTAssertEqual("archive", subcommand.command)
    }
    
    func testBuildForTestingCommand() {
        let subcommand = Xcodebuild.SubCommand.buildForTesting
        XCTAssertEqual("build-for-testing", subcommand.command)
    }
    
    func testTestWithoutBuildingCommand() {
        let subcommand = Xcodebuild.SubCommand.testWithoutBuilding
        XCTAssertEqual("test-without-building", subcommand.command)
    }
    
    func testCleanBuildCommand() {
        let subcommand: Xcodebuild.SubCommand = [.build, .clean]
        XCTAssertEqual("build clean", subcommand.command)
    }
    
    func testNullCommand() {
        let subcommand: Xcodebuild.SubCommand = []
        XCTAssertEqual("", subcommand.command)
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
