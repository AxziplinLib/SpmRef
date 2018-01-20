//
//  SubCommand.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/20.
//

// MARK: - SubCommand.

extension Xcodebuild {
    public struct SubCommand: OptionSet {
        /// The element type of the option set.
        public typealias RawValue = UInt
        /// Get the raw value of the option set.
        public var rawValue: UInt { return _rawValue }
        /// The underlying raw value storage.
        private let _rawValue: UInt
        /// Creates a new option set from the given raw value.
        ///
        /// This initializer always succeeds, even if the value passed as `rawValue`
        /// exceeds the static properties declared as part of the option set. This
        /// example creates an instance of `ShippingOptions` with a raw value beyond
        /// the highest element, with a bit mask that effectively contains all the
        /// declared static members.
        ///
        ///     let extraOptions = ShippingOptions(rawValue: 255)
        ///     print(extraOptions.isStrictSuperset(of: .all))
        ///     // Prints "true"
        ///
        /// - Parameter rawValue: The raw value of the option set to create. Each bit
        ///   of `rawValue` potentially represents an element of the option set,
        ///   though raw values may include bits that are not defined as distinct
        ///   values of the `OptionSet` type.
        public init(rawValue: Xcodebuild.SubCommand.RawValue) {
            _rawValue = rawValue
        }
        /// Command `build` for building the target in specific workspace or null.
        public static let build: SubCommand = SubCommand(rawValue: 1)
        /// Command `build-for-testing` for test the targets.
        public static let buildForTesting: SubCommand = SubCommand(rawValue: 2)
        /// Command `analyze` for the static-analyze.
        public static let analyze: SubCommand = SubCommand(rawValue: 3)
        /// Command `archive` for archiving the target to a ipa.
        public static let archive: SubCommand = SubCommand(rawValue: 4)
        /// Command `test` for testing the test target.
        public static let test: SubCommand = SubCommand(rawValue: 5)
        /// Command `test-without-building` for testing the test target without building.
        public static let testWithoutBuilding: SubCommand = SubCommand(rawValue: 6)
        /// Command `install-src` for installing srcs.
        public static let installSrc: SubCommand = SubCommand(rawValue: 7)
        /// Command `install` for installing.
        public static let install: SubCommand = SubCommand(rawValue: 8)
        /// Command `clean` for cleaning the targets.
        public static let clean: SubCommand = SubCommand(rawValue: 9)
    }
}

extension Xcodebuild.SubCommand: Hashable {
    public var hashValue: Int {
        return Int(_rawValue)
    }
}

/// All available sub commands for `xcodebuild`.
private let _availableSubCommandsMap: [Xcodebuild.SubCommand: String] =
[.clean : "clean",
 .build : "build",
 .test : "test",
 .install : "install",
 .installSrc : "install-src",
 .analyze : "analyze",
 .archive : "archive",
 .buildForTesting : "build-for-testing",
 .testWithoutBuilding : "test-without-building"]

// MARK: - Commandable Conforming.

extension Xcodebuild.SubCommand: Commandable {
    public var command: String {
        return _availableSubCommandsMap.filter({ self.contains($0.key) }).map({ $0.value }).joined(separator: " ")
    }
    
    public var description: String {
        return String()
    }
}
