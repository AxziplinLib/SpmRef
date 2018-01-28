//
//  BuildPhase.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/28.
//

// MARK: - PBXBuildPhase.

/// A type represets the build phase of xcode.
public protocol PBXBuildPhase: PBXObject {
    /// The build action mask of the build phase.
    var buildActionMask: UInt { get }
    /// The managed files of the build phase.
    var files: [PBXBuildFile] { get }
    /// Should the build phase run only for deployment post processing.
    var runOnlyForDeploymentPostprocessing: Bool { get }
}
