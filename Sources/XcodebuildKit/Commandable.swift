//
//  Commandable.swift
//  XcodebuildKit
//
//  Created by devedbox on 2018/1/20.
//

/// A type represents a command using in the CLI application.
public protocol Commandable {
    /// Returns the command string value.
    var command: String { get }
    /// Returns the description of the command.
    var description: String { get }
}
