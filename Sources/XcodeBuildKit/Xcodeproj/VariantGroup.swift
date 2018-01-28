//
//  VariantGroup.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/28.
//

public struct PBXVariantGroup: PBXFileElement {
    /// The source type of the variant group.
    public var sourceTree: PBXSourceTree
    /// The name of the variant group.
    public var name: String
    /// The path of the variant group.
    public var path: String
    
    /// The children elements managed by the variant group.
    public var children: [PBXFileElement]
}
