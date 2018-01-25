//
//  Option.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/20.
//

import Foundation

// MARK: - Option.

extension XcodeBuild {
    public struct Option {
        /// The option using to run xodebuild command.
        let option: String
        /// The arguments of the option.
        let args: String?
        /// Indicates the option is build settings or not. Default is false.
        var isBuildSettings: Bool = false
    }
}

extension XcodeBuild.Option {
    public init(option: String, args: String? = nil) {
        self.option = option
        self.args = args
    }
}

// MARK: - Commandable Conforming.

extension XcodeBuild.Option: Commandable {
    public var arguments: [String] {
        return [(isBuildSettings ? "" : "-") + option, args].flatMap({ $0 })
    }
    
    public var description: String {
        return """
        To build an Xcode workspace, you must pass both the -workspace and -scheme options to define the build.
        The parameters of the scheme will control which targets are built and how they are built, although you may pass other options to xcodebuild to override
        some parameters of the scheme.
        
        There are also several options that display info about the installed version of Xcode or about projects or workspaces in the local directory,
        but which do not initiate an action.  These include -list, -showBuildSettings, -showsdks, -usage, and -version.
        """
    }
}

// MARK: - Targets & Locations.

extension XcodeBuild.Option {
    /// Build the project name.xcodeproj.  Required if there are multiple project files in the same directory.
    ///
    /// - Parameter name: The name of the project: `name.xcodeproj`.
    public static func project(named name: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "project", args: name)
    }
    /// Build the target specified by targetname.
    ///
    /// - Parameter name: The name of the target.
    public static func target(named name: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "target", args: name)
    }
    /// Build all the targets in the specified project.
    public static var allTargets: XcodeBuild.Option {
        return XcodeBuild.Option(option: "allTargets")
    }
    /// Build the workspace name.xcworkspace.
    ///
    /// - Parameter name: The name of the workspace: `name.xcworkspace`.
    public static func workspace(named name: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "workspace", args: name)
    }
    /// Build the scheme specified by schemename.  Required if building a workspace.
    ///
    /// - Parameter name: The name of the scheme.
    public static func scheme(named name: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "scheme", args: name)
    }
    /// Use the destination device described by destinationspecifier.
    /// Defaults to a destination that is compatible with the selected scheme.
    ///
    /// - Parameter des: A destination to build the target.
    public static func destination(_ des: XcodeBuild.Destination) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "destination", args: des.command)
    }
    /// Use the specified timeout when searching for a destination device.
    /// The default is 30 seconds.
    public static func destination(timeout: Double = 30.0) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "destination-timeout", args: "\(timeout)")
    }
    /// Use the build configuration specified by configurationname when building each target.
    public static func configuration(named name: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "configuration", args: name)
    }
    /// Use the architecture specified by architecture when building each target.
    public static func arch(_ arch: Architecture) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "arch", args: arch.rawValue)
    }
    /// Build an Xcode project or workspace against the specified SDK, using build tools appropriate
    /// for that SDK. The argument may be an absolute path to an SDK, or the canonical name of an SDK.
    public static func sdk(fullPathOrName arg: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "sdk", args: arg)
    }
    /// Lists all available SDKs that Xcode knows about, including their canonical names suitable
    /// for use with -sdk. Does not initiate a build.
    public static var showsSDKs: XcodeBuild.Option {
        return XcodeBuild.Option(option: "showsdks")
    }
    /// Lists the build settings in a project or workspace and scheme. Does not initiate a build.
    /// Use with -project or -workspace and -scheme.
    public static var showBuildSettings: XcodeBuild.Option {
        return XcodeBuild.Option(option: "showBuildSettings")
    }
    /// Lists the targets and configurations in a project, or the schemes in a workspace.
    /// Does not initiate a build. Use with -project or -workspace.
    public static var list: XcodeBuild.Option {
        return XcodeBuild.Option(option: "list")
    }
    /// Turns the address sanitizer on or off. This overrides the setting for the launch action
    /// of a scheme in a workspace.
    public static func enableAddressSanitizer(_ enabled: Bool) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "enableAddressSanitizer", args: enabled ? "YES" : "NO")
    }
    /// Turns the thread sanitizer on or off. This overrides the setting for the launch action
    /// of a scheme in a workspace.
    public static func enableThreadSanitizer(_ enabled: Bool) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "enableThreadSanitizer", args: enabled ? "YES" : "NO")
    }
    /// Turns the undefined behavior sanitizer on or off. This overrides the setting for the
    /// launch action of a scheme in a workspace.
    public static func enableUndefinedBehaviorSanitizer(_ enabled: Bool) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "enableUndefinedBehaviorSanitizer", args: enabled ? "YES" : "NO")
    }
    /// Turns code coverage on or off during testing. This overrides the setting for the test
    /// action of a scheme in a workspace.
    public static func enableCodeCoverage(_ enabled: Bool) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "enableCodeCoverage", args: enabled ? "YES" : "NO")
    }
    /// Specifies ISO 639-1 language during testing. This overrides the setting for the test
    /// action of a scheme in a workspace.
    public static func testLanguage(_ lauguage: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "testLanguage", args: lauguage)
    }
    /// Specifies ISO 3166-1 region during testing. This overrides the setting for the test
    /// action of a scheme in a workspace.
    public static func testRegion(_ region: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "testRegion", args: region)
    }
    /// Overrides the folder that should be used for derived data when performing an action on a scheme in a workspace.
    public static func derivedDataPath(_ path: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "derivedDataPath", args: path)
    }
    /// Writes a bundle to the specified path with results from performing an action on a scheme in a workspace.
    public static func resultBundlePath(_ path: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "resultBundlePath", args: path)
    }
    /// Allow XcodeBuild to communicate with the Apple Developer website. For automatically signed targets,
    /// XcodeBuild will create and update profiles, app IDs, and certificates. For manually signed targets,
    /// XcodeBuild will download missing or updated provisioning profiles. Requires a developer account
    /// to have been added in Xcode's Accounts preference pane.
    public static var allowProvisioningUpdates: XcodeBuild.Option {
        return XcodeBuild.Option(option: "allowProvisioningUpdates")
    }
    /// Allow XcodeBuild to register your destination device on the Apple Developer website if necessary.
    /// Requires -allowProvisioningUpdates.
    public static var allowProvisioningDeviceRegistration: XcodeBuild.Option {
        return XcodeBuild.Option(option: "allowProvisioningDeviceRegistration")
    }
}

extension XcodeBuild.Option {
    /// Specifies that an archive should be exported. Requires -archivePath, -exportPath,
    /// and -exportOptionsPlist.  Cannot be passed along with an action.
    public static var exportArchive: XcodeBuild.Option {
        return XcodeBuild.Option(option: "exportArchive")
    }
    /// Specifies the path for the archive produced by the archive action, or specifies the
    /// archive that should be exported when -exportArchive is passed.
    public static func archivePath(_ path: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "archivePath", args: path)
    }
    /// Specifies the destination for the exported product, including the name of the exported file.
    public static func exportPath(_ path: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "exportPath", args: path)
    }
    /// Specifies options for -exportArchive.  XcodeBuild -help can print the full set of available options.
    public static func exportOptionsPlist(_ path: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "exportOptionsPlist", args: path)
    }
    /// Exports localizations to XLIFF files. Requires -project and -localizationPath.
    /// Cannot be passed along with an action.
    public static var exportLocalizations: XcodeBuild.Option {
        return XcodeBuild.Option(option: "exportLocalizations")
    }
    /// Imports localizations from an XLIFF file. Requires -project and -localizationPath.
    /// Cannot be passed along with an action.
    public static var importLocalizations: XcodeBuild.Option {
        return XcodeBuild.Option(option: "importLocalizations")
    }
    /// Specifies a path to a directory or a single XLIFF localization file.
    public static var localizationPath: XcodeBuild.Option {
        return XcodeBuild.Option(option: "localizationPath")
    }
    /// Specifies optional ISO 639-1 languages included in a localization export.
    /// May be repeated to specify multiple languages. May be excluded to specify an
    /// export includes only development language strings.
    public static func exportLanguage(_ language: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "exportLanguage", args: language)
    }
}

extension XcodeBuild.Option {
    /// Load the build settings defined in filename when building all targets.
    /// These settings will override all other settings, including settings passed
    /// individually on the command line.
    public static func xcconfig(_ filename: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "xcconfig", args: filename)
    }
    /// Specifies test run parameters. Can only be used with the test-without-building action.
    /// Cannot be used with -workspace or -project. See <x-man-page://5/XcodeBuild.xctestrun>
    /// for file format details.
    public static func xctestrun(_ path: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "xctestrun", args: path)
    }
}

extension XcodeBuild.Option {
    /// Constrains a test action to skip testing a specified identifier, but including all other identifiers.
    /// Test identifiers have the form TestTarget[/TestClass[/TestMethod]]. The TestTarget component of an identifier
    /// is the name of a unit or UI testing bundle as shown in the Test Navigator. An xcodebuild command can combine
    /// multiple constraint options, but -only-testing: has precedence over -skip-testing:.
    public static func skipTesting(_ testIdentifier: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "skip-testing", args: testIdentifier)
    }
    /// Constrains a test action to only testing a specified identifier, and excluding all other identifiers.
    /// Test identifiers have the form TestTarget[/TestClass[/TestMethod]]. The TestTarget component of an identifier
    /// is the name of a unit or UI testing bundle as shown in the Test Navigator. An xcodebuild command can combine
    /// multiple constraint options, but -only-testing: has precedence over -skip-testing:.
    public static func onlyTesting(_ testIdentifier: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "only-testing", args: testIdentifier)
    }
    /// Do not run test bundles in parallel on the specified destinations. Testing will occur on each destination serially.
    public static var disableConcurrentTesting: XcodeBuild.Option {
        return XcodeBuild.Option(option: "disable-concurrent-testing")
    }
    /// Constrain the number of physical devices on which to test concurrently.
    public static func maximumConcurrentTestDeviceDestinations(_ count: UInt) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "maximum-concurrent-test-device-destinations", args: "\(count)")
    }
    /// Constrain the number of simulator devices on which to test concurrently.
    public static func maximumConcurrentTestSimulatorDestinations(_ count: UInt) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "maximum-concurrent-test-simulator-destinations", args: "\(count)")
    }
    /// Print the commands that would be executed, but do not execute them.
    public static var dryRun: XcodeBuild.Option {
        return XcodeBuild.Option(option: "dry-run")
    }
}

extension XcodeBuild.Option {
    /// Skip actions that cannot be performed instead of failing. This option is only honored if -scheme is passed.
    public static var skipUnavailableActions: XcodeBuild.Option {
        return XcodeBuild.Option(option: "skipUnavailableActions")
    }
}

extension XcodeBuild.Option {
    /// Set the build setting `buildsetting` to `value`.
    /// A detailed reference of Xcode build settings can be found
    /// at: <https://help.apple.com/xcode/mac/current/#/itcaec37c2a6>
    public static func buildSetting(_ buildSetting: XcodeBuild.BuildSetting) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "\(buildSetting.command)", args: nil, isBuildSettings: true)
    }
    /// Set the user default `userdefault` to `value`.
    public static func userDefault(_ userDefault: String, value: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "\(userDefault)=\(value)", args: nil, isBuildSettings: true)
    }
}

extension XcodeBuild.Option {
    /// Use a given toolchain, specified with either an identifier or name.
    public static func toolchain(_ identifierOrName: String) -> XcodeBuild.Option {
        return XcodeBuild.Option(option: "toolchain", args: identifierOrName)
    }
    /// Do not print any output except for warnings and errors.
    public static var quiet: XcodeBuild.Option {
        return XcodeBuild.Option(option: "quiet")
    }
    /// Provide additional status output.
    public static var verbose: XcodeBuild.Option {
        return XcodeBuild.Option(option: "verbose")
    }
    /// Display version information for this install of Xcode. Does not initiate a build.
    /// When used in conjunction with -sdk, the version of the specified SDK is displayed,
    /// or all SDKs if -sdk is given no argument. Additionally, a single line of the reported
    /// version information may be returned if infoitem is specified.
    public static var version: XcodeBuild.Option {
        return XcodeBuild.Option (option: "version")
    }
    /// Show the Xcode and SDK license agreements. Allows for accepting the license agreements
    /// without launching Xcode itself, which is useful for headless systems. Must be run as a privileged user.
    public static var license: XcodeBuild.Option {
        return XcodeBuild.Option(option: "license")
    }
    /// Check if any First Launch tasks need to be performed.
    public static var checkFirstLaunchStatus: XcodeBuild.Option {
        return XcodeBuild.Option(option: "checkFirstLaunchStatus")
    }
    /// Install packages and agree to the license.
    public static var runFirstLaunch: XcodeBuild.Option {
        return XcodeBuild.Option(option: "runFirstLaunch")
    }
    /// Displays usage information for xcodebuild.
    public static var usage: XcodeBuild.Option {
        return XcodeBuild.Option(option: "usage")
    }
}

// MARK: - Output Format.

extension XcodeBuild.Option {
    /// output as JSON (note: -json implies -quiet)
    public static var json: XcodeBuild.Option {
        return XcodeBuild.Option(option: "json")
    }
}

// MARK: - Generator.

extension XcodeBuild.Option {
    /// Generate test codes to run the unit test of XcodeBuild.Option.
    private static func generateTestCodes(at sourcePath: String) {
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: sourcePath))
            , let sourceCodes = String(data: data, encoding: .utf8)
            , let regex = try? NSRegularExpression(pattern: "\"[A-Z][a-z]*[0-9]*\"", options: [.caseInsensitive]) else { return }
        
        let matches = regex.matches(in: sourceCodes,
                                    options: [.reportCompletion],
                                    range: NSRange(location: 0,
                                                   length: sourceCodes.lengthOfBytes(using: .utf8)))
        func range(from nsrange: NSRange) -> Range<String.Index> {
            let start =
                sourceCodes.utf16.index(sourceCodes.utf16.startIndex,
                                        offsetBy: nsrange.location,
                                        limitedBy: sourceCodes.utf16.endIndex)!
            let end =
                sourceCodes.utf16.index(start,
                                        offsetBy: nsrange.length,
                                        limitedBy: sourceCodes.utf16.endIndex)!
            
            return start..<end
        }
        
        let results =
            matches
            .map({ sourceCodes[range(from: $0.range)]
                .replacingOccurrences(of: "\"", with: "") })
            .filter({ !["YES", "NO", "XcodeBuildKit", "testExample"].contains($0) })
        
        var testCodes = """
        //
        //  OptionTests.swift
        //  XcodeBuildKitTests
        //
        //  Created by devedbox on \(describedDate(from: "yyyy/MM/dd").replacingOccurrences(of: "/0", with: "/")).
        //

        import XCTest
        @testable import XcodeBuildKit

        class OptionTests: XCTestCase {
        \tfunc testExample() {
        \t\t// This is an example of a functional test case.
        \t\t// Use XCTAssert and related functions to verify your tests produce the correct
        \t\t// results.
        \t\t// XCTAssertEqual(Option().text, "Hello, World!")
        \t}\n\n
        """
        
        func functionContent(`for` functionName: String) -> String {
            if let regex = try? NSRegularExpression(pattern: "\(functionName)\\([_\\sA-Za-z0-9]*:",
                                                    options: [.caseInsensitive])
             , let match = regex.firstMatch(in: sourceCodes,
                                            options: [],
                                            range: NSRange(location: 0,
                                                           length: sourceCodes.lengthOfBytes(using: .utf8))) {
                let result =
                "(\(sourceCodes[range(from: match.range)].replacingOccurrences(of: "\(functionName)(", with: "")))"
                    .split(separator: " ").first
                
                return "\(result ?? ""): \"XcodeBuildKit\")".replacingOccurrences(of: "_: ", with: "")
            } else if let regex = try? NSRegularExpression(pattern: "var\\s\(functionName)[_\\sA-Za-z0-9]*:", options: [.caseInsensitive])
                , let _ = regex.firstMatch(in: sourceCodes,
                                           options: [],
                                           range: NSRange(location: 0,
                                                          length: sourceCodes.lengthOfBytes(using: .utf8))) {
                return ""
            } else {
                return """
                (option: "XcodeBuildKit")
                """
            }
        }
        
        results.forEach { string in
            let func_c = functionContent(for: string)
            testCodes += """
            \tfunc test\(String(string.first!).uppercased() + string.dropFirst())Option() {
            \t\tlet option: XcodeBuild.Option = .\(string)\(func_c)
            \t\tXCTAssertEqual("-\(string)\(func_c.contains("XcodeBuildKit") ? " XcodeBuildKit" : "")", option.command)
            \t\tXCTAssertEqual(["-\(string)"\(func_c.contains("XcodeBuildKit") ? ", \"XcodeBuildKit\"" : "")], option.arguments)
            \t}\n\n
            """
        }
        testCodes += """
        \tstatic var allTests = [
        \t\t("testExample", testExample),\n
        """
        testCodes +=
            results
                .map({ """
                    \t\t(\"test\(String($0.first!).uppercased()
                    + $0.dropFirst())Option\", test\(String($0.first!).uppercased()
                    + $0.dropFirst())Option),
                    """ })
                .joined(separator: "\n")
        testCodes += """
        \n\t]
        }
        """
        print(testCodes)
    }
}
