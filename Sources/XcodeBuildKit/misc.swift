//
//  misc.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/21.
//

#if os(Linux)
import Glibc
#else
import Darwin.C
#endif
import Foundation

/// Returns the environment variable path of the system if any.
public var envPaths: [String] = { () -> [String] in
    let env_paths = getenv("PATH")
    let char_env_paths = unsafeBitCast(env_paths, to: UnsafePointer<CChar>.self)
    return
        String(validatingUTF8: char_env_paths)?
            .split(separator: ":")
            .flatMap({ String($0) })
            ?? []
}()
/// Find the executable path with a path extension.
public func executable(_ name: String) -> String? {
    let paths =
        [FileManager.default.currentDirectoryPath] + envPaths
    return
        paths.map({
            name.hasPrefix("/")
                ? $0 + name
                : $0 + "/\(name)"
        }).first(where: {
            FileManager.default.isExecutableFile(atPath: $0)
        })
}
/// Run the command with the given arguments.
///
/// - Parameter command: The command to run.
/// - Parameter arguments: The arguments for the command to run with.
///
/// - Returns: The stdoutput or stderror results.
public func run(_ command: String, arguments: [String], `in` currentWorkingDirectory: String? = nil) -> String {
    // Creates a new process.
    let process = Process()
    // Changing the current working path if needed.
    if let cwd = currentWorkingDirectory {
        process.currentDirectoryPath = cwd
    }
    
    process.launchPath = executable(command)
    process.arguments = arguments
    // Using custom output.
    let pipe = Pipe()
    process.standardOutput = pipe
    process.launch()
    process.waitUntilExit()
    // Read output data.
    let file = pipe.fileHandleForReading
    let data = file.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)
    
    return output ?? "Can not read the output data."
}
