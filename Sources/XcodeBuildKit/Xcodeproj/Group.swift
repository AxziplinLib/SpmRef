//
//  Group.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/28.
//

// MARK: - PBXGourp.

public struct PBXGourp: PBXFileElement {
    /// The source tree type of the gourp.
    public var sourceTree: PBXSourceTree
    /// The goupname.
    public var name: String
    /// The path of the group.
    public var path: String
    
    /// The children managed by the group.
    public var children: [PBXFileElement]
}
