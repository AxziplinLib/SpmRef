//
//  BuildFile.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/26.
//

// MARK: - PBXBuildFile.

/// A type represents the build file of the xcode.
public struct PBXBuildFile: PBXObject {
    /// The reference of the original file.
    public var fileRef: PBXFileReference
    /// The settings of the build file, such as `COMPILER_FLAGS`.
    public var settings: [String: Any]?
}

extension PBXBuildFile {
    /// The key for the settings of `COMPILER_FLAGS`.
    public let compilerFlags: String = "COMPILER_FLAGS"
}
