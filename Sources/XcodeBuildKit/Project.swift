//
//  Project.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/21.
//

import Foundation

// MARK: - Project.

/// A type represents the project of xcodebuild.
public struct Project: Decodable {
    /// The name of the project.
    public let name: String
    /// The targets the project contains.
    public let targets: [String]
    /// The schemes the project contains.
    public let schemes: [String]
    /// The configurations the project contains.
    public let configurations: [String]
}
/// A type to wrap the contained project json data.
private struct _ProjectContainer: Decodable {
    /// The contained project value.
    fileprivate let project: Project
}

extension Project {
    /// Get the available project info at the given path or throws errors if any error occured.
    ///
    /// - Parameter path: The working directory to traverse and find target project.
    /// - Returns: The legal Project value if any.
    public static func project(at path: String = FileManager.default.currentDirectoryPath) throws -> Project {
        let projectPaths =
            try FileManager.default.contentsOfDirectory(at: URL(fileURLWithPath: path),
                                                        includingPropertiesForKeys: nil,
                                                        options: [])
                .lazy
                .filter({ $0.absoluteString.hasSuffix(".xcodeproj/") })
                .map({ $0.absoluteString })
        // Throws errors if the count of the projects is not legal.
        if projectPaths.count == 0 {
            throw XcodeBuildError.project(.zeroXcodeproj)
        } else if projectPaths.count > 1 {
            throw XcodeBuildError.project(.mutipleXcodeproj)
        }
        // Get the result of `xcodebuild -list -json`.
        let result = XcodeBuild.execute(options: .list, .json).launch(at: path)
        // Throws error if the command exit failed.
        guard result.exitCode == 0 else {
            throw XcodeBuildError.command(result.output)
        }
        // Get the data of the json string using utf8 encoding.
        guard let data = result.output.data(using: .utf8) else {
            throw XcodeBuildError.data(.jsonStringConvertToDataFailed)
        }
        return try JSONDecoder().decode(_ProjectContainer.self, from: data).project
    }
}
