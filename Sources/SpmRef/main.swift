//
//  main.swift
//  SpmRef
//
//  Created by devedbox on 2018/1/20.
//

import SpmRefKit
import XcodeBuildKit
import Basic
import Foundation

// Foundation.Process.launchedProcess(launchPath: "/bin/echo", arguments: ["This is an echo message."])

// let result = try Process.checkNonZeroExit(args: "XcodeBuild", "-showsdks")
// print(envPaths)
// print(result)

print(FileManager.default.currentDirectoryPath)
print(XcodeBuild.execute(options: .showsSDKs).launch())
print(XcodeBuild.xcodeVersion)

print("Hello, World!")
