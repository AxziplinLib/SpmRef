//
//  SourceTree.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/27.
//

public enum PBXSourceTree: String {
    case absolute = "<absolute>"
    case group = "<group>"
    case sourceRoot = "SOURCE_ROOT"
    case buildProductsDir = "BUILT_PRODUCTS_DIR"
    case sdkRoot = "SDKROOT"
    case developerDir = "DEVELOPER_DIR"
}

extension PBXSourceTree: PBXObject { }
