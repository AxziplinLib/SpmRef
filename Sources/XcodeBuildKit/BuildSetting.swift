//
//  BuildSetting.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/22.
//

// MARK: - BuildSetting.

extension XcodeBuild {
    /// A type represent the build setting fields value of the xcode project.
    public struct BuildSetting {
        /// The name of the build setting field.
        let name: String
        /// The value of the build setting field.
        let value: String
    }
}

