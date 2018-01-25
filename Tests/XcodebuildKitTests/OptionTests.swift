//
//  OptionTests.swift
//  XcodeBuildKitTests
//
//  Created by devedbox on 2018/1/25.
//

import XCTest
@testable import XcodeBuildKit

class OptionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(Option().text, "Hello, World!")
    }
    
    func testProjectOption() {
        let option: XcodeBuild.Option = .project(named: "XcodeBuildKit")
        XCTAssertEqual("-project XcodeBuildKit", option.command)
        XCTAssertEqual(["-project", "XcodeBuildKit"], option.arguments)
    }
    
    func testTargetOption() {
        let option: XcodeBuild.Option = .target(named: "XcodeBuildKit")
        XCTAssertEqual("-target XcodeBuildKit", option.command)
        XCTAssertEqual(["-target", "XcodeBuildKit"], option.arguments)
    }
    
    func testAllTargetsOption() {
        let option: XcodeBuild.Option = .allTargets
        XCTAssertEqual("-allTargets", option.command)
        XCTAssertEqual(["-allTargets"], option.arguments)
    }
    
    func testWorkspaceOption() {
        let option: XcodeBuild.Option = .workspace(named: "XcodeBuildKit")
        XCTAssertEqual("-workspace XcodeBuildKit", option.command)
        XCTAssertEqual(["-workspace", "XcodeBuildKit"], option.arguments)
    }
    
    func testSchemeOption() {
        let option: XcodeBuild.Option = .scheme(named: "XcodeBuildKit")
        XCTAssertEqual("-scheme XcodeBuildKit", option.command)
        XCTAssertEqual(["-scheme", "XcodeBuildKit"], option.arguments)
    }
    
    func testDestinationOption() {
        let des = XcodeBuild.Destination.iOS(.iPhone6)
        let option: XcodeBuild.Option = .destination(des)
        XCTAssertEqual("-destination \(des.command)", option.command)
        XCTAssertEqual(["-destination", "\(des.command)"], option.arguments)
    }
    
    func testConfigurationOption() {
        let option: XcodeBuild.Option = .configuration(named: "XcodeBuildKit")
        XCTAssertEqual("-configuration XcodeBuildKit", option.command)
        XCTAssertEqual(["-configuration", "XcodeBuildKit"], option.arguments)
    }
    
    func testArchOption() {
        let arch = Architecture.arm64
        let option: XcodeBuild.Option = .arch(arch)
        XCTAssertEqual("-arch \(arch.rawValue)", option.command)
        XCTAssertEqual(["-arch", "\(arch.rawValue)"], option.arguments)
    }
    
    func testSdkOption() {
        let option: XcodeBuild.Option = .sdk(fullPathOrName: "XcodeBuildKit")
        XCTAssertEqual("-sdk XcodeBuildKit", option.command)
        XCTAssertEqual(["-sdk", "XcodeBuildKit"], option.arguments)
    }
    
    func testShowsdksOption() {
        let option: XcodeBuild.Option = .showsSDKs
        XCTAssertEqual("-showsdks", option.command)
        XCTAssertEqual(["-showsdks"], option.arguments)
    }
    
    func testShowBuildSettingsOption() {
        let option: XcodeBuild.Option = .showBuildSettings
        XCTAssertEqual("-showBuildSettings", option.command)
        XCTAssertEqual(["-showBuildSettings"], option.arguments)
    }
    
    func testListOption() {
        let option: XcodeBuild.Option = .list
        XCTAssertEqual("-list", option.command)
        XCTAssertEqual(["-list"], option.arguments)
    }
    
    func testEnableAddressSanitizerOption() {
        let option: XcodeBuild.Option = .enableAddressSanitizer(true)
        XCTAssertEqual("-enableAddressSanitizer YES", option.command)
        XCTAssertEqual(["-enableAddressSanitizer", "YES"], option.arguments)
    }
    
    func testEnableThreadSanitizerOption() {
        let option: XcodeBuild.Option = .enableThreadSanitizer(true)
        XCTAssertEqual("-enableThreadSanitizer YES", option.command)
        XCTAssertEqual(["-enableThreadSanitizer", "YES"], option.arguments)
    }
    
    func testEnableUndefinedBehaviorSanitizerOption() {
        let option: XcodeBuild.Option = .enableUndefinedBehaviorSanitizer(true)
        XCTAssertEqual("-enableUndefinedBehaviorSanitizer YES", option.command)
        XCTAssertEqual(["-enableUndefinedBehaviorSanitizer", "YES"], option.arguments)
    }
    
    func testEnableCodeCoverageOption() {
        let option: XcodeBuild.Option = .enableCodeCoverage(false)
        XCTAssertEqual("-enableCodeCoverage NO", option.command)
        XCTAssertEqual(["-enableCodeCoverage", "NO"], option.arguments)
    }
    
    func testTestLanguageOption() {
        let option: XcodeBuild.Option = .testLanguage("XcodeBuildKit")
        XCTAssertEqual("-testLanguage XcodeBuildKit", option.command)
        XCTAssertEqual(["-testLanguage", "XcodeBuildKit"], option.arguments)
    }
    
    func testTestRegionOption() {
        let option: XcodeBuild.Option = .testRegion("XcodeBuildKit")
        XCTAssertEqual("-testRegion XcodeBuildKit", option.command)
        XCTAssertEqual(["-testRegion", "XcodeBuildKit"], option.arguments)
    }
    
    func testDerivedDataPathOption() {
        let option: XcodeBuild.Option = .derivedDataPath("XcodeBuildKit")
        XCTAssertEqual("-derivedDataPath XcodeBuildKit", option.command)
        XCTAssertEqual(["-derivedDataPath", "XcodeBuildKit"], option.arguments)
    }
    
    func testResultBundlePathOption() {
        let option: XcodeBuild.Option = .resultBundlePath("XcodeBuildKit")
        XCTAssertEqual("-resultBundlePath XcodeBuildKit", option.command)
        XCTAssertEqual(["-resultBundlePath", "XcodeBuildKit"], option.arguments)
    }
    
    func testAllowProvisioningUpdatesOption() {
        let option: XcodeBuild.Option = .allowProvisioningUpdates
        XCTAssertEqual("-allowProvisioningUpdates", option.command)
        XCTAssertEqual(["-allowProvisioningUpdates"], option.arguments)
    }
    
    func testAllowProvisioningDeviceRegistrationOption() {
        let option: XcodeBuild.Option = .allowProvisioningDeviceRegistration
        XCTAssertEqual("-allowProvisioningDeviceRegistration", option.command)
        XCTAssertEqual(["-allowProvisioningDeviceRegistration"], option.arguments)
    }
    
    func testExportArchiveOption() {
        let option: XcodeBuild.Option = .exportArchive
        XCTAssertEqual("-exportArchive", option.command)
        XCTAssertEqual(["-exportArchive"], option.arguments)
    }
    
    func testArchivePathOption() {
        let option: XcodeBuild.Option = .archivePath("XcodeBuildKit")
        XCTAssertEqual("-archivePath XcodeBuildKit", option.command)
        XCTAssertEqual(["-archivePath", "XcodeBuildKit"], option.arguments)
    }
    
    func testExportPathOption() {
        let option: XcodeBuild.Option = .exportPath("XcodeBuildKit")
        XCTAssertEqual("-exportPath XcodeBuildKit", option.command)
        XCTAssertEqual(["-exportPath", "XcodeBuildKit"], option.arguments)
    }
    
    func testExportOptionsPlistOption() {
        let option: XcodeBuild.Option = .exportOptionsPlist("XcodeBuildKit")
        XCTAssertEqual("-exportOptionsPlist XcodeBuildKit", option.command)
        XCTAssertEqual(["-exportOptionsPlist", "XcodeBuildKit"], option.arguments)
    }
    
    func testExportLocalizationsOption() {
        let option: XcodeBuild.Option = .exportLocalizations
        XCTAssertEqual("-exportLocalizations", option.command)
        XCTAssertEqual(["-exportLocalizations"], option.arguments)
    }
    
    func testImportLocalizationsOption() {
        let option: XcodeBuild.Option = .importLocalizations
        XCTAssertEqual("-importLocalizations", option.command)
        XCTAssertEqual(["-importLocalizations"], option.arguments)
    }
    
    func testLocalizationPathOption() {
        let option: XcodeBuild.Option = .localizationPath
        XCTAssertEqual("-localizationPath", option.command)
        XCTAssertEqual(["-localizationPath"], option.arguments)
    }
    
    func testExportLanguageOption() {
        let option: XcodeBuild.Option = .exportLanguage("XcodeBuildKit")
        XCTAssertEqual("-exportLanguage XcodeBuildKit", option.command)
        XCTAssertEqual(["-exportLanguage", "XcodeBuildKit"], option.arguments)
    }
    
    func testXcconfigOption() {
        let option: XcodeBuild.Option = .xcconfig("XcodeBuildKit")
        XCTAssertEqual("-xcconfig XcodeBuildKit", option.command)
        XCTAssertEqual(["-xcconfig", "XcodeBuildKit"], option.arguments)
    }
    
    func testXctestrunOption() {
        let option: XcodeBuild.Option = .xctestrun("XcodeBuildKit")
        XCTAssertEqual("-xctestrun XcodeBuildKit", option.command)
        XCTAssertEqual(["-xctestrun", "XcodeBuildKit"], option.arguments)
    }
    
    func testSkipUnavailableActionsOption() {
        let option: XcodeBuild.Option = .skipUnavailableActions
        XCTAssertEqual("-skipUnavailableActions", option.command)
        XCTAssertEqual(["-skipUnavailableActions"], option.arguments)
    }
    
    func testToolchainOption() {
        let option: XcodeBuild.Option = .toolchain("XcodeBuildKit")
        XCTAssertEqual("-toolchain XcodeBuildKit", option.command)
        XCTAssertEqual(["-toolchain", "XcodeBuildKit"], option.arguments)
    }
    
    func testQuietOption() {
        let option: XcodeBuild.Option = .quiet
        XCTAssertEqual("-quiet", option.command)
        XCTAssertEqual(["-quiet"], option.arguments)
    }
    
    func testVerboseOption() {
        let option: XcodeBuild.Option = .verbose
        XCTAssertEqual("-verbose", option.command)
        XCTAssertEqual(["-verbose"], option.arguments)
    }
    
    func testVersionOption() {
        let option: XcodeBuild.Option = .version
        XCTAssertEqual("-version", option.command)
        XCTAssertEqual(["-version"], option.arguments)
    }
    
    func testLicenseOption() {
        let option: XcodeBuild.Option = .license
        XCTAssertEqual("-license", option.command)
        XCTAssertEqual(["-license"], option.arguments)
    }
    
    func testCheckFirstLaunchStatusOption() {
        let option: XcodeBuild.Option = .checkFirstLaunchStatus
        XCTAssertEqual("-checkFirstLaunchStatus", option.command)
        XCTAssertEqual(["-checkFirstLaunchStatus"], option.arguments)
    }
    
    func testRunFirstLaunchOption() {
        let option: XcodeBuild.Option = .runFirstLaunch
        XCTAssertEqual("-runFirstLaunch", option.command)
        XCTAssertEqual(["-runFirstLaunch"], option.arguments)
    }
    
    func testUsageOption() {
        let option: XcodeBuild.Option = .usage
        XCTAssertEqual("-usage", option.command)
        XCTAssertEqual(["-usage"], option.arguments)
    }
    
    func testJsonOption() {
        let option: XcodeBuild.Option = .json
        XCTAssertEqual("-json", option.command)
        XCTAssertEqual(["-json"], option.arguments)
    }
    
    static var allTests = [
        ("testExample", testExample),
        ("testProjectOption", testProjectOption),
        ("testTargetOption", testTargetOption),
        ("testAllTargetsOption", testAllTargetsOption),
        ("testWorkspaceOption", testWorkspaceOption),
        ("testSchemeOption", testSchemeOption),
        ("testDestinationOption", testDestinationOption),
        ("testConfigurationOption", testConfigurationOption),
        ("testArchOption", testArchOption),
        ("testSdkOption", testSdkOption),
        ("testShowsdksOption", testShowsdksOption),
        ("testShowBuildSettingsOption", testShowBuildSettingsOption),
        ("testListOption", testListOption),
        ("testEnableAddressSanitizerOption", testEnableAddressSanitizerOption),
        ("testEnableThreadSanitizerOption", testEnableThreadSanitizerOption),
        ("testEnableUndefinedBehaviorSanitizerOption", testEnableUndefinedBehaviorSanitizerOption),
        ("testEnableCodeCoverageOption", testEnableCodeCoverageOption),
        ("testTestLanguageOption", testTestLanguageOption),
        ("testTestRegionOption", testTestRegionOption),
        ("testDerivedDataPathOption", testDerivedDataPathOption),
        ("testResultBundlePathOption", testResultBundlePathOption),
        ("testAllowProvisioningUpdatesOption", testAllowProvisioningUpdatesOption),
        ("testAllowProvisioningDeviceRegistrationOption", testAllowProvisioningDeviceRegistrationOption),
        ("testExportArchiveOption", testExportArchiveOption),
        ("testArchivePathOption", testArchivePathOption),
        ("testExportPathOption", testExportPathOption),
        ("testExportOptionsPlistOption", testExportOptionsPlistOption),
        ("testExportLocalizationsOption", testExportLocalizationsOption),
        ("testImportLocalizationsOption", testImportLocalizationsOption),
        ("testLocalizationPathOption", testLocalizationPathOption),
        ("testExportLanguageOption", testExportLanguageOption),
        ("testXcconfigOption", testXcconfigOption),
        ("testXctestrunOption", testXctestrunOption),
        ("testSkipUnavailableActionsOption", testSkipUnavailableActionsOption),
        ("testToolchainOption", testToolchainOption),
        ("testQuietOption", testQuietOption),
        ("testVerboseOption", testVerboseOption),
        ("testVersionOption", testVersionOption),
        ("testLicenseOption", testLicenseOption),
        ("testCheckFirstLaunchStatusOption", testCheckFirstLaunchStatusOption),
        ("testRunFirstLaunchOption", testRunFirstLaunchOption),
        ("testUsageOption", testUsageOption),
        ("testJsonOption", testJsonOption),
    ]
}
