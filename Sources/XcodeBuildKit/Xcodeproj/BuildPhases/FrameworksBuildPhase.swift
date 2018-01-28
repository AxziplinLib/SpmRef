//
//  FrameworksBuildPhase.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/28.
//

// MARK: - PBXFrameworksBuildPhase.

/// A type represents the build phase of frameworks.
public struct PBXFrameworksBuildPhase: PBXBuildPhase {
    /// The build action mask of the build phase.
    public var buildActionMask: UInt = 2147483647
    /// The managed files of the build phase.
    public var files: [PBXBuildFile] = []
    /// Should the build phase run only for deployment post processing.
    public var runOnlyForDeploymentPostprocessing: Bool = false
}
