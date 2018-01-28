//
//  CopyFilesBuildPhase.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/28.
//

// MARK: - PBXCopyFilesBuildPhase.

/// A type reprensets the build phase of copying files.
public struct PBXCopyFilesBuildPhase: PBXBuildPhase {
    /// The build action mask of the build phase.
    public var buildActionMask: UInt = 2147483647
    /// The managed files of the build phase.
    public var files: [PBXBuildFile] = []
    /// Should the build phase run only for deployment post processing.
    public var runOnlyForDeploymentPostprocessing: Bool = false
    
    /// The destination path of the copy files phase copying to.
    public var desPath: String = ""
    /// The subfolder of the copy files phase copying to.
    public var dstSubfolderSpec: Subfolder = .resources
}

/// The destination path for .xpcServices subfolder type.
public let XPCServicesPath = "$(CONTENTS_FOLDER_PATH)/XPCServices"

// MARK: - Subfolder.

extension PBXCopyFilesBuildPhase {
    /// The destination of the copy files build phase copying to.
    public enum Subfolder: UInt {
        case absolutePath = 0
        case productsDirectory = 16
        case wrapper = 1
        case executables = 6
        case resources = 7
        case javaResources = 15
        case frameworks = 10
        case sharedFrameworks = 11
        case sharedSupport = 12
        case plugins = 13
        case xpcServices
    }
}
