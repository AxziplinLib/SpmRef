//
//  Platform.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/21.
//

// MARK: - Platform.

/// The available platforms for the xcodebuild commands.
public enum Platform: String {
    /// Raw value type.
    public typealias RawValue = String
    /// Indicates the macOS platform.
    case macOS = "macOS"
    /// Indicates the iOS platform.
    case iOS = "iOS"
    /// Indicates the iOS Simulator platform.
    case iOSSimulator = "iOS Simulator"
    /// Indicates the watchOS platform.
    case watchOS = "watchOS"
    /// Indicates the watchOS Simulator platform.
    case watchOSSimulator = "watchOS Simulator"
    /// Indicates the tvOS platform.
    case tvOS = "tvOS"
    /// Indicates the tvOS Simulator platform.
    case tvOSSimulator = "tvOS Simulator"
}
