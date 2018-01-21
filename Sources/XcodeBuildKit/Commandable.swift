//
//  Commandable.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/20.
//

/// A type represents a command using in the CLI application.
public protocol Commandable: CustomStringConvertible {
    /// Returns the command string value.
    var command: String { get }
}
