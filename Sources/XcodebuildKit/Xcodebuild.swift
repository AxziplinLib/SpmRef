//
//  Xcodebuild.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/20.
//

#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

public struct Xcodebuild {
    let subcommand: Subcommand = []
}

// MARK: - Commands.

extension Xcodebuild {
    
}

extension Xcodebuild: Commandable {
    /// The command of `xcodebuild`.
    public var command: String { return "xcodebuild" }
    /// The description of xcodebuild command.
    public var description: String { return "build Xcode projects and workspaces" }
}
