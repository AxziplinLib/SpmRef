//
//  XcodeBuild.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/20.
//

import Foundation

/// A type represents the `xcodebuild` command program.
public struct XcodeBuild {
    /// The actions of the `xcodebuild` command. Use this to specify the actions the run the
    /// `xcodebuild` command such as `clean`, `build` and so on.
    var actions: Action = []
    /// The options to run with `xcodebuild`. e.g.: `-verbose`, `-target`.
    var options: [Option] = []
}

extension XcodeBuild {
    /// Creates a XcodeBuild command with the given actions and options.
    ///
    /// - Parameter actions: The actions to specify the command to run with.
    /// - Parameter options: The options to run with.
    ///
    /// - Returns: A XcodeBuild value.
    public static func execute(_ actions: Action = [], options: Option...) -> XcodeBuild {
        return
            XcodeBuild(actions: actions,
                       options: options)
    }
}

// MARK: - Commands.

extension XcodeBuild {
    /// Creates the `xcodebuild` command with the given actions and options.
    ///
    /// - Parameter actions: The actions to specify the command to run with.
    /// - Parameter options: The options to run with.
    ///
    /// - Returns: A string value represents the CLI commands.
    public static func command(_ actions: Action = [], options: Option...) -> String {
        return XcodeBuild(actions: actions, options: options).command
    }
    /// Creates the `xcodebuild` command with the given actions and options.
    ///
    /// - Parameter actions: The actions to specify the command to run with.
    /// - Parameter options: The options to run with.
    ///
    /// - Returns: A list of arguments represents the CLI commands.
    public static func arguments(_ actions: Action = [], options: Option...) -> [String] {
        return XcodeBuild(actions: actions, options: options).arguments
    }
}

// MARK: - Commandable Conforming.

extension XcodeBuild: Commandable {
    /// Get the arguments of the commands.
    public var arguments: [String] {
        return ["xcodebuild"] + actions.arguments + options.map({ $0.command })
    }
    /// The description of XcodeBuild command.
    public var description: String {
        return "build Xcode projects and workspaces"
    }
}

// MARK: Version.

extension XcodeBuild {
    /// Get the basic build version of the XcodeBuild.
    /// Currently is `Xcode 9.2`.
    public static var version: String {
        return """
        Xcode 9.2
        Build version 9C40b
        """
    }
    /// Get the version of the `xcodebuild` command of the system.
    public static var xcodeVersion: String {
        return
            run("xcrun",
                arguments: XcodeBuild.arguments(options: .version))
    }
}

// MARK: - Run Commands.

extension XcodeBuild {
    /// Launch the `xcodebuild` command of XcodeBuild.
    public func launch() -> String {
        let args = arguments
        precondition(args.count > 1, "The arguments of xcodebuild should not be 0.")
        
        return
            run(args[0],
                arguments: Array(args.dropFirst()))
    }
}
