//
//  HeadersBuildPhase.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/28.
//

// MARK: - PBXHeadersBuildPhase.

/// A type represnets the build phase of headers.
public struct PBXHeadersBuildPhase: PBXBuildPhase {
    /// The build action mask of the build phase.
    public var buildActionMask: UInt = 2147483647
    /// The managed files of the build phase.
    public var files: [PBXBuildFile] = []
    /// Should the build phase run only for deployment post processing.
    public var runOnlyForDeploymentPostprocessing: Bool = false
}
