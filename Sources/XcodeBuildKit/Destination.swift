//
//  Destination.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/21.
//

// MARK: - Destination.

extension XcodeBuild {
    /// Use the destination device described by destinationspecifier.
    /// Defaults to a destination that is compatible with the selected scheme.
    ///
    /// The -destination option takes as its argument a destination specifier describing the device (or devices)
    /// to use as a destination.  A destination specifier is a single argument consisting of a set of
    /// comma-separated key=value pairs.  The -destination option
    /// may be specified multiple times to cause XcodeBuild to perform the specified action on multiple destinations.
    ///
    /// Destination specifiers may include the platform key to specify one of the supported destination platforms.
    /// There are additional keys which should be supplied depending on the platform of the device you are selecting.
    ///
    /// Some devices may take time to look up. The -destination-timeout option can be used to specify the amount of
    /// time to wait before a device is considered unavailable.  If unspecified, the default timeout is 30 seconds.
    ///
    /// Currently, XcodeBuild supports these platforms:
    ///
    /// macOS              The local Mac, referred to in the Xcode interface as My Mac, and which supports the following key:
    ///                    - arch: The architecture to use, either x86_64 (the default) or i386.
    ///
    /// iOS                An iOS device, which supports the following keys:
    ///                    - id: The identifier of the device to use, as shown in the Devices window.
    ///                          A valid destination specifier must provide either id or name, but not both.
    ///                    - name: The name of the device to use. A valid destination specifier must provide either id or name, but not both.
    ///
    /// iOS Simulator      A simulated iOS device, which supports the following keys:
    ///                    - id: The identifier of the simulated device to use, as shown in the Devices window.
    ///                          A valid destination specifier must provide either id or name, but not both.
    ///                    - name: The name of the simulated device to use. A valid destination specifier must provide either id or name, but not both.
    ///                    - OS: When specifying the simulated device by name, the iOS version for that simulated device, such as 6.0,
    ///                          or the string latest (the default) to indicate the most recent version of iOS supported by this version of Xcode.
    ///
    /// watchOS            A watchOS app is always built and deployed nested inside of an iOS app. To use a watchOS device as
    ///                    your destination, specify a scheme which is configured to run a WatchKit app, and specify the iOS platform
    ///                    destination that is paired with the watchOS device you want to use.
    ///
    /// watchOS Simulator  A  watchOS Simulator app is always built and deployed nested inside of an iOS Simulator app. To use a
    ///                    watchOS Simulator device as your destination, specify a scheme which is configured to run a WatchKit app,
    ///                    and specify the iOS Simulator platform destination that is paired with the watchOS Simulator device you want to use.
    ///
    /// tvOS               A tvOS device, which supports the following keys:
    ///                    - id: The identifier of the device to use, as shown in the Devices window. A valid destination specifier
    ///                          must provide either id or name, but not both.
    ///                    - name: The name of the device to use. A valid destination specifier must provide either id or name, but not both.
    ///
    /// tvOS Simulator     A simulated tvOS device, which supports the following keys:
    ///                    - id: The identifier of the simulated device to use, as shown in the Devices window. A valid destination
    ///                          specifier must provide either id or name, but not both.
    ///                    - name: The name of the simulated device to use. A valid destination specifier must provide either id or name, but not both.
    ///                    - OS: When specifying the simulated device by name, the tvOS version for that simulated device, such as 9.0,
    ///                          or the string latest (the default) to indicate the most recent version of tvOS supported by this version of Xcode.
    ///
    /// Some actions (such as building) may be performed without an actual device present.  To build against a platform generically
    /// instead of a specific device, the destination specifier may be prefixed with the optional string  "generic/",  indicating  that  the
    /// platform should be targeted generically.  An example of a generic destination is the "Generic iOS Device" destination displayed
    /// in Xcode's UI when no physical iOS device is present.
    public struct Destination {
        /// The platform of the destination to build.
        public internal(set) var platform: Platform {
            didSet {
                if platform == .macOS, architecture == nil {
                    architecture = .x86_64
                }
            }
        }
        /// The architecture for the mac OS only. Support x86_64(default) and i386.
        public internal(set) var architecture: Architecture?
        /// The identifier for all platforms but mac OS.
        public private(set) var id: String?
        /// The destination name for all platforms but mac OS.
        public private(set) var name: String?
        /// The OS version for simulators.
        public private(set) var OS: String?
    }
}

// MARK: - Platforms.

extension XcodeBuild.Destination {
    /// Creates a `macOS` Destination value with the given architecture.
    ///
    /// - Parameter arch: The architecture for the mac OS.
    /// - Returns: A macOS destinaton with the given architecture.
    public static func macOS(_ arch: Architecture = .x86_64) -> XcodeBuild.Destination {
        return XcodeBuild.Destination(platform: .macOS,
                                      architecture: arch,
                                      id: nil,
                                      name: nil,
                                      OS: nil)
    }
    /// Creates an `iOS` Destination value with the given id and name.
    ///
    /// - Parameter device: The value of the iOS device.
    /// - Parameter id: The id of the specific iOS device.
    ///
    /// - Returns: An iOS destinaton with the given name and id.
    public static func iOS(_ device: iOSDevice?, id: String? = nil) -> XcodeBuild.Destination {
        precondition(!(device == nil && id == nil), "The id and name of the destination must not both be nil.")
        return XcodeBuild.Destination(platform: .iOS,
                                      architecture: nil,
                                      id: id,
                                      name: device?.rawValue,
                                      OS: nil)
    }
    /// Creates an `iOS Simulator` Destination value with the given id and name and OS version.
    ///
    /// - Parameter device: The device of the iOS Simulator device.
    /// - Parameter id: The id of the specific iOS Simulator device.
    /// - Parameter OS: The OS version of the iOS Simulator device.
    ///
    /// - Returns: An iOS Simulator destinaton with the given name, id and OS version.
    public static func iOSSimulator(_ device: iOSDevice?, id: String?, OS: String?) -> XcodeBuild.Destination {
        precondition(!(device == nil && id == nil), "The id and name of the destination must not both be nil.")
        return XcodeBuild.Destination(platform: .iOSSimulator,
                                      architecture: nil,
                                      id: id,
                                      name: device?.rawValue,
                                      OS: (device != nil && id == nil) ? (OS ?? "latest") : nil)
    }
    /// Creates a `watchOS` Destination value with the given id and name.
    ///
    /// - Parameter device: The device of the watchOS device.
    /// - Parameter id: The id of the specific watchOS device.
    ///
    /// - Returns: A watchOS destinaton with the given name and id.
    public static func watchOS(_ device: iOSDevice?, id: String? = nil) -> XcodeBuild.Destination {
        return iOS(device, id: id)
    }
    /// Creates a `watchOS Simulator` Destination value with the given id and name and OS version.
    ///
    /// - Parameter device: The device of the watchOS Simulator device.
    /// - Parameter id: The id of the specific watchOS Simulator device.
    /// - Parameter OS: The OS version of the watchOS Simulator device.
    ///
    /// - Returns: A watchOS Simulator destinaton with the given name, id and OS version.
    public static func watchOSSimulator(_ device: iOSDevice?, id: String?, OS: String?) -> XcodeBuild.Destination {
        return iOSSimulator(device, id: id, OS: OS)
    }
    /// Creates a `tvOS` Destination value with the given id and name.
    ///
    /// - Parameter device: The device of the tvOS device.
    /// - Parameter id: The id of the specific tvOS device.
    ///
    /// - Returns: A tvOS destinaton with the given name and id.
    public static func tvOS(_ device: AppleTVDevice?, id: String? = nil) -> XcodeBuild.Destination {
        precondition(!(device == nil && id == nil), "The id and name of the destination must not both be nil.")
        return XcodeBuild.Destination(platform: .tvOS,
                                      architecture: nil,
                                      id: id,
                                      name: device?.rawValue,
                                      OS: nil)
    }
    /// Creates a `tvOS Simulator` Destination value with the given id and name and OS version.
    ///
    /// - Parameter device: The device of the tvOS Simulator device.
    /// - Parameter id: The id of the specific tvOS Simulator device.
    /// - Parameter OS: The OS version of the tvOS Simulator device.
    ///
    /// - Returns: A tvOS Simulator destinaton with the given name, id and OS version.
    public static func tvOSSimulator(_ device: AppleTVDevice?, id: String?, OS: String?) -> XcodeBuild.Destination {
        precondition(!(device == nil && id == nil), "The id and name of the destination must not both be nil.")
        return XcodeBuild.Destination(platform: .tvOSSimulator,
                                      architecture: nil,
                                      id: id,
                                      name: device?.rawValue,
                                      OS: (device != nil && id == nil) ? (OS ?? "latest") : nil)
    }
}

// MARK: - Commandable Conforming.

extension XcodeBuild.Destination: Commandable {
    public var arguments: [String] {
        let args = [("platform", platform.rawValue),
                    ("arch", architecture?.rawValue),
                    ("name", name),
                    ("id", id),
                    ("OS", OS)]
        return ["'\(args.flatMap({ $0.1 == nil ? nil : $0.0+"="+$0.1! }).joined(separator: ","))'"]
    }
    
    public var description: String {
        return """
        Use the destination device described by destinationspecifier.
        Defaults to a destination that is compatible with the selected scheme.
        
        The -destination option takes as its argument a destination specifier describing the device (or devices)
        to use as a destination.  A destination specifier is a single argument consisting of a set of
        comma-separated key=value pairs.  The -destination option
        may be specified multiple times to cause XcodeBuild to perform the specified action on multiple destinations.
        
        Destination specifiers may include the platform key to specify one of the supported destination platforms.
        There are additional keys which should be supplied depending on the platform of the device you are selecting.
        
        Some devices may take time to look up. The -destination-timeout option can be used to specify the amount of
        time to wait before a device is considered unavailable.  If unspecified, the default timeout is 30 seconds.
        """
    }
}
