//
//  Xcodebuild.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/20.
//

public struct Xcodebuild { }

// MARK: - Commands.

extension Xcodebuild {
    
}

extension Xcodebuild: Commandable {
    /// The command of `xcodebuild`.
    public var command: String { return "xcodebuild" }
    /// The description of xcodebuild command.
    public var description: String { return "build Xcode projects and workspaces" }
}
