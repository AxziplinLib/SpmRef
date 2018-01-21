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

// MARK: - iOS Device.

public enum iOSDevice: String {
    /// Raw value type.
    public typealias RawValue = String
    
    // MARK: iPod.
    
    case iPodTouch = "iPod Touch"
    case iPodTouch2 = "iPod Touch 2"
    case iPodTouch3 = "iPod Touch 3"
    case iPodTouch4 = "iPod Touch 4"
    case iPodTouch5 = "iPod Touch 5"
    case iPodTouch6 = "iPod Touch 6"
    
    // MARK: iPhone.
    
    case iPhone = "iPhone"
    case iPhone3G = "iPhone 3G"
    case iPhone3GS = "iPhone 3GS"
    case iPhone4 = "iPhone 4"
    case iPhone4S = "iPhone 4S"
    case iPhone5 = "iPhone 5"
    case iPhone5c = "iPhone 5c"
    case iPhone5s = "iPhone 5s"
    case iPhone6 = "iPhone 6"
    case iPhone6Plus = "iPhone 6 Plus"
    case iPhone6s = "iPhone 6s"
    case iPhone6sPlus = "iPhone 6s Plus"
    case iPhoneSE = "iPhone SE"
    case iPhone7 = "iPhone 7"
    case iPhone7Plus = "iPhone 7 Plus"
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhoneX = "iPhone X"
    
    // MARK: iPad.
    
    case iPad = "iPad"
    case iPad2 = "iPad 2"
    case iPad3 = "iPad 3"
    case iPad4 = "iPad 4"
    case iPadMini = "iPad Mini"
    case iPadMini2 = "iPad Mini 2"
    case iPadMini3 = "iPad Mini 3"
    case iPadMini4 = "iPad Mini 4"
    case iPadAir = "iPad Air"
    case iPadAir2 = "iPad Air 2"
    case iPadPro = "iPad Pro"
    case iPadPro9_7Inch = "iPad Pro (9.7 inch)"
    case iPadPro10_5Inch = "iPad Pro (10.5-inch)"
    case iPadPro12_9Inch = "iPad Pro (12.9 inch)"
    case iPadPro12_9Inch2 = "iPad Pro (12.9-inch) (2nd generation)"
    case iPadRetina = "iPad Retina"
    
    // MARK: Generic.
    
    case iOSGeneric = "Generic iOS Device"
    case iOSSimulatorGeneric = "Generic iOS Simulator Device"
}

// MARK: - Apple TV Device.

public enum AppleTVDevice: String {
    /// Raw value type.
    public typealias RawValue = String
    
    case AppleTV = "Apple TV"
    case AppleTV2 = "Apple TV (2nd generation)"
    case AppleTV3 = "Apple TV (3rd generation)"
    case AppleTV3RevA = "Apple TV (3rd generation) Rev A"
    case AppleTV4 = "Apple TV (4th generation)"
    case AppleTV4K = "Apple TV 4K"
}

// MARK: - Apple Watch Device.

public enum AppleWatchDevice: String {
    /// Raw value type.
    public typealias RawValue = String
    
    case AppleWatch = "Apple Watch"
    case AppleWatchSport = "Apple Watch Sport"
    case AppleWatchEdition = "Apple Watch Edition"
    case AppleWatchHermès = "Apple Watch Hermès"
    case AppleWatchNikePlus = "Apple Watch Nike+"
}
