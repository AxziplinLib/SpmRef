//
//  Architecture.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/21.
//
 
// MARK: - Architecture.

/// The available architectures for XcodeBuild commands.
public enum Architecture: String {
    /// Arch for 64bit mac OS and simulators.
    case x86_64 = "x86_64"
    /// Arch for 32bit mac OS and simulators.
    case i386 = "i386"
    /// Arch for 32bit iOS device such as: iPhone4｜iPhone4S｜iPad｜iPad2｜iPad3(The New iPad)｜iPad mini｜iPod Touch 3G｜iPod Touch4
    case armv7 = "armv7"
    /// Arch for 32bit iOS device such as: iPhone5｜iPhone5C｜iPad4(iPad with Retina Display)
    case armv7s = "armv7s"
    /// Arch for 64bit iOS device such as: iPhone5s and highers.
    case arm64 = "arm64"
}
