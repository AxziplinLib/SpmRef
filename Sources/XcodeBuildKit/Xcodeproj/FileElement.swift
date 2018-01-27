//
//  FileElement.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/27.
//

// MARK: - PBXFileElement.

/// This element is an abstract parent for file and group elements.
public protocol PBXFileElement: PBXObject {
    /// The srouce tree of the file element.
    var sourceTree: PBXSourceTree { get }
    /// The name of the file element.
    var name: String { get }
    /// The full path of the file element.
    var path: String { get }
}
