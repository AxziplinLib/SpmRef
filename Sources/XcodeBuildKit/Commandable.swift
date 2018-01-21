//
//  Commandable.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/20.
//

/// A type represents a command using in the CLI application.
public protocol Commandable: CustomStringConvertible {
    /// Returns the commands, options and arguments.
    var arguments: [String] { get }
}

extension Commandable {
    /// Returns the command string value.
    public var command: String {
        return arguments.joined(separator: " ")
    }
}
