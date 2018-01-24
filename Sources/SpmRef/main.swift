//
//  main.swift
//  SpmRef
//
//  Created by devedbox on 2018/1/20.
//

import SpmRefKit
import XcodeBuildKit
import Basic
import Rainbow
import Foundation

// Foundation.Process.launchedProcess(launchPath: "/bin/echo", arguments: ["This is an echo message."])

// let result = try Process.checkNonZeroExit(args: "XcodeBuild", "-showsdks")
// print(envPaths)
// print(result)

//print(FileManager.default.currentDirectoryPath)
// print(XcodeBuild.execute(options: .showsSDKs).launch())
// print(XcodeBuild.xcodeVersion)

let path = "/Users/devedbox/Library/Mobile Documents/com~apple~CloudDocs/Development/SpmRef"
// let path = "/Users/devedbox/Desktop/AXAlertController"
// let result =
    // XcodeBuild.execute(options: .list, .json, .quiet).launch()
// let devcodedResult = try JSONDecoder().decode(Dictionary<String, String>.self, from: result.data(using: .utf8)!)
// print(result.output.green)

//print(try FileManager.default.contentsOfDirectory(at: URL(fileURLWithPath: "/Users/devedbox/Library/Mobile Documents/com~apple~CloudDocs/Development/SpmRef"),
//                                              includingPropertiesForKeys: nil,
//                                              options: []))

// let project = try Project.project(at: path)
// print(project)

// print("Hello, World!")

// let buildSettingsReferences =
// print(XcodeBuild.BuildSetting.generateSourceCode(from: path + "/Sources/XcodeBuildKit/BuildSettingsReference"))
// print(buildSettingsReferences)

//let settings = [
//]

XcodeBuild.execute(options: .project(named: "SpmRef"), .target(named: "spmref"), .buildSetting(.action(XcodeBuild.Action.clean.command))).launch(at: path)
//run("xcodebuild",
//    arguments: ["-project", "SpmRef", "-target", "spm", "ACTION=build"],
//    at: path)

