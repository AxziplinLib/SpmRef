//
//  XcodeBuild.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/20.
//

#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

public struct XcodeBuild {
    let action: Action = []
}

// MARK: - Commands.

extension XcodeBuild {
    
}

extension XcodeBuild: Commandable {
    /// The command of `XcodeBuild`.
    public var command: String { return "XcodeBuild" }
    /// The description of XcodeBuild command.
    public var description: String { return "build Xcode projects and workspaces" }
}
