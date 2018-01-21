//
//  Option.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/20.
//

extension Xcodebuild {
    public struct Option {
        /// The option using to run xodebuild command.
        let option: String
        /// The arguments of the option.
        let arguments: String?
        /// Indicates the option is build settings or not. Default is false.
        var isBuildSettings: Bool = false
    }
}

extension Xcodebuild.Option {
    public init(option: String, arguments: String?) {
        self.option = option
        self.arguments = arguments
    }
}

extension Xcodebuild.Option {
    /// Build the project name.xcodeproj.  Required if there are multiple project files in the same directory.
    ///
    /// - Parameter name: The name of the project: `name.xcodeproj`.
    public static func project(named name: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "project", arguments: name)
    }
    /// Build the target specified by targetname.
    ///
    /// - Parameter name: The name of the target.
    public static func target(named name: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "target", arguments: name)
    }
    /// Build all the targets in the specified project.
    public static var allTargets: Xcodebuild.Option {
        return Xcodebuild.Option(option: "allTargets", arguments: nil)
    }
    /// Build the workspace name.xcworkspace.
    ///
    /// - Parameter name: The name of the workspace: `name.xcworkspace`.
    public static func workspace(named name: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "workspace", arguments: name)
    }
    /// Build the scheme specified by schemename.  Required if building a workspace.
    ///
    /// - Parameter name: The name of the scheme.
    public static func scheme(named name: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "scheme", arguments: name)
    }
    /// Use the destination device described by destinationspecifier.
    /// Defaults to a destination that is compatible with the selected scheme.
    ///
    /// - Parameter des: A destination to build the target.
    public static func destination(_ des: Xcodebuild.Destination) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "destination", arguments: des.command)
    }
    /// Use the specified timeout when searching for a destination device.
    /// The default is 30 seconds.
    public static func destination(timeout: Double = 30.0) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "destination-timeout", arguments: "\(timeout)")
    }
    /// Use the build configuration specified by configurationname when building each target.
    public static func configuration(named name: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "configuration", arguments: name)
    }
    /// Use the architecture specified by architecture when building each target.
    public static func arch(_ arch: Architecture) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "arch", arguments: arch.rawValue)
    }
    /// Build an Xcode project or workspace against the specified SDK, using build tools appropriate
    /// for that SDK. The argument may be an absolute path to an SDK, or the canonical name of an SDK.
    public static func sdk(fullPathOrName arg: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "sdk", arguments: arg)
    }
    /// Lists all available SDKs that Xcode knows about, including their canonical names suitable
    /// for use with -sdk. Does not initiate a build.
    public static var showsSDKs: Xcodebuild.Option {
        return Xcodebuild.Option(option: "showsdks", arguments: nil)
    }
    /// Lists the build settings in a project or workspace and scheme. Does not initiate a build.
    /// Use with -project or -workspace and -scheme.
    public static var showBuildSettings: Xcodebuild.Option {
        return Xcodebuild.Option(option: "showBuildSettings", arguments: nil)
    }
    /// Lists the targets and configurations in a project, or the schemes in a workspace.
    /// Does not initiate a build. Use with -project or -workspace.
    public static var list: Xcodebuild.Option {
        return Xcodebuild.Option(option: "list", arguments: nil)
    }
    /// Turns the address sanitizer on or off. This overrides the setting for the launch action
    /// of a scheme in a workspace.
    public static func enableAddressSanitizer(_ enabled: Bool) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "enableAddressSanitizer", arguments: enabled ? "YES" : "NO")
    }
    /// Turns the thread sanitizer on or off. This overrides the setting for the launch action
    /// of a scheme in a workspace.
    public static func enableThreadSanitizer(_ enabled: Bool) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "enableThreadSanitizer", arguments: enabled ? "YES" : "NO")
    }
    /// Turns the undefined behavior sanitizer on or off. This overrides the setting for the
    /// launch action of a scheme in a workspace.
    public static func enableUndefinedBehaviorSanitizer(_ enabled: Bool) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "enableUndefinedBehaviorSanitizer", arguments: enabled ? "YES" : "NO")
    }
    /// Turns code coverage on or off during testing. This overrides the setting for the test
    /// action of a scheme in a workspace.
    public static func enableCodeCoverage(_ enabled: Bool) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "enableCodeCoverage", arguments: enabled ? "YES" : "NO")
    }
    /// Specifies ISO 639-1 language during testing. This overrides the setting for the test
    /// action of a scheme in a workspace.
    public static func testLanguage(_ lauguage: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "testLanguage", arguments: lauguage)
    }
    /// Specifies ISO 3166-1 region during testing. This overrides the setting for the test
    /// action of a scheme in a workspace.
    public static func testRegion(_ region: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "testRegion", arguments: region)
    }
    /// Overrides the folder that should be used for derived data when performing an action on a scheme in a workspace.
    public static func derivedDataPath(_ path: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "derivedDataPath", arguments: path)
    }
    /// Writes a bundle to the specified path with results from performing an action on a scheme in a workspace.
    public static func resultBundlePath(_ path: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "resultBundlePath", arguments: path)
    }
    /// Allow xcodebuild to communicate with the Apple Developer website. For automatically signed targets,
    /// xcodebuild will create and update profiles, app IDs, and certificates. For manually signed targets,
    /// xcodebuild will download missing or updated provisioning profiles. Requires a developer account
    /// to have been added in Xcode's Accounts preference pane.
    public static var allowProvisioningUpdates: Xcodebuild.Option {
        return Xcodebuild.Option(option: "allowProvisioningUpdates", arguments: nil)
    }
    /// Allow xcodebuild to register your destination device on the Apple Developer website if necessary.
    /// Requires -allowProvisioningUpdates.
    public static var allowProvisioningDeviceRegistration: Xcodebuild.Option {
        return Xcodebuild.Option(option: "allowProvisioningDeviceRegistration", arguments: nil)
    }
}

extension Xcodebuild.Option {
    /// Specifies that an archive should be exported. Requires -archivePath, -exportPath,
    /// and -exportOptionsPlist.  Cannot be passed along with an action.
    public static var exportArchive: Xcodebuild.Option {
        return Xcodebuild.Option(option: "exportArchive", arguments: nil)
    }
    /// Specifies the path for the archive produced by the archive action, or specifies the
    /// archive that should be exported when -exportArchive is passed.
    public static func archivePath(_ path: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "archivePath", arguments: path)
    }
    /// Specifies the destination for the exported product, including the name of the exported file.
    public static func exportPath(_ path: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "exportPath", arguments: path)
    }
    /// Specifies options for -exportArchive.  xcodebuild -help can print the full set of available options.
    public static func exportOptionsPlist(_ path: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "exportOptionsPlist", arguments: path)
    }
    /// Exports localizations to XLIFF files. Requires -project and -localizationPath.
    /// Cannot be passed along with an action.
    public static var exportLocalizations: Xcodebuild.Option {
        return Xcodebuild.Option(option: "exportLocalizations", arguments: nil)
    }
    /// Imports localizations from an XLIFF file. Requires -project and -localizationPath.
    /// Cannot be passed along with an action.
    public static var importLocalizations: Xcodebuild.Option {
        return Xcodebuild.Option(option: "importLocalizations", arguments: nil)
    }
    /// Specifies a path to a directory or a single XLIFF localization file.
    public static var localizationPath: Xcodebuild.Option {
        return Xcodebuild.Option(option: "localizationPath", arguments: nil)
    }
    /// Specifies optional ISO 639-1 languages included in a localization export.
    /// May be repeated to specify multiple languages. May be excluded to specify an
    /// export includes only development language strings.
    public static func exportLanguage(_ language: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "exportLanguage", arguments: language)
    }
}

extension Xcodebuild.Option {
    /// Load the build settings defined in filename when building all targets.
    /// These settings will override all other settings, including settings passed
    /// individually on the command line.
    public static func xcconfig(_ filename: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "xcconfig", arguments: filename)
    }
    /// Specifies test run parameters. Can only be used with the test-without-building action.
    /// Cannot be used with -workspace or -project. See <x-man-page://5/xcodebuild.xctestrun>
    /// for file format details.
    public static func xctestrun(_ path: String) -> Xcodebuild.Option {
        return Xcodebuild.Option(option: "xctestrun", arguments: path)
    }
}
