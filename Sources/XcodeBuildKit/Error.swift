//
//  Error.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/21.
//

public enum XcodeBuildError: Error {
    case command(String)
    case data(DataDomain)
    case project(ProjectDomain)
}

public enum ProjectDomain: String {
    case zeroXcodeproj = """
    The current path has none available .xcodeproj files.
    """
    case mutipleXcodeproj = """
    The current path has multiple .xcodeproj files. You need to specify one with -target `name`
    """
}

public enum DataDomain: String {
    case jsonStringConvertToDataFailed = """
    Convert the JSON String to Data type failed.
    """
}
