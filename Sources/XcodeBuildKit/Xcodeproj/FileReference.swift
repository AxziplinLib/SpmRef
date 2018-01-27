//
//  FileReference.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/27.
//

// MARK: - PBXFileReference.

/// A PBXFileReference is used to track every external file referenced by the project:
/// source files, resource files, libraries, generated application files, and so on.
public struct PBXFileReference {
    /// The encoding of the content of the file. Available values defined in `FileEncoding`.
    public var fileEncoding: FileEncoding?
    /// The line ending value of the file. Default is nil.
    public var lineEnding: LineEnding?
    /// The indent width of the file. Default is nil.
    public var indentWidth: UInt?
    /// The tab width if the file. Default is nil.
    public var tabWidth: UInt?
    /// Should use tabs width instead of intent width. Default is nil.
    public var usesTabs: Bool?
    /// Should wrap lines of the content of the file.
    public var wrapsLines: Bool?
}
