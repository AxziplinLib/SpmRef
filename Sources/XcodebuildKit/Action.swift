//
//  Action.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/20.
//

// MARK: - Action.

extension Xcodebuild {
    public struct Action: OptionSet {
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
        public init(rawValue: Xcodebuild.Action.RawValue) {
            _rawValue = rawValue
        }
        /// Command `build` for building the target in specific workspace or null.
        public static let build: Action = Action(rawValue: 1 << 1)
        /// Command `build-for-testing` for test the targets.
        public static let buildForTesting: Action = Action(rawValue: 1 << 2)
        /// Command `analyze` for the static-analyze.
        public static let analyze: Action = Action(rawValue: 1 << 3)
        /// Command `archive` for archiving the target to a ipa.
        public static let archive: Action = Action(rawValue: 1 << 4)
        /// Command `test` for testing the test target.
        public static let test: Action = Action(rawValue: 1 << 5)
        /// Command `test-without-building` for testing the test target without building.
        public static let testWithoutBuilding: Action = Action(rawValue: 1 << 6)
        /// Command `install-src` for installing srcs.
        public static let installSrc: Action = Action(rawValue: 1 << 7)
        /// Command `install` for installing.
        public static let install: Action = Action(rawValue: 1 << 8)
        /// Command `clean` for cleaning the targets.
        public static let clean: Action = Action(rawValue: 1 << 9)
    }
}

extension Xcodebuild.Action: Hashable {
    public var hashValue: Int {
        return Int(_rawValue)
    }
}

/// All available sub commands for `xcodebuild`.
private let _availableActionsMap: [Xcodebuild.Action: String] =
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

extension Xcodebuild.Action: Commandable {
    public var command: String {
        return _availableActionsMap.filter({ self.contains($0.key) }).map({ $0.value }).joined(separator: " ")
    }
    
    public var description: String {
        return String()
    }
}
