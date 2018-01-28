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
import CryptoSwift
import Utility

// Foundation.Process.launchedProcess(launchPath: "/bin/echo", arguments: ["This is an echo message."])

// let result = try Process.checkNonZeroExit(args: "XcodeBuild", "-showsdks")
// print(envPaths)
// print(result)

//print(FileManager.default.currentDirectoryPath)
// print(XcodeBuild.execute(options: .showsSDKs).launch())
// print(XcodeBuild.xcodeVersion)

let path = "/Users/devedbox/Library/Mobile Documents/com~apple~CloudDocs/Development/SpmRef"
// let path = "/Users/devedbox/Library/Mobile Documents/com~apple~CloudDocs/Development/SpmRef/Sources/XcodeBuildKit/Option.swift"
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

// XcodeBuild.execute(options: .project(named: "SpmRef"), .target(named: "spmref"), .buildSetting(.action(.clean))).launch(at: path)
//run("xcodebuild",
//    arguments: ["-project", "SpmRef", "-target", "spm", "ACTION=build"],
//    at: path)

// XcodeBuild.Option.generateTestCodes(at: path)
//if let data = try? Data(contentsOf: URL(fileURLWithPath: path + "/SpmRef.xcodeproj/project.pbxproj")) {
//    var plistFormat = PropertyListSerialization.PropertyListFormat.openStep
//    let plist = try? PropertyListSerialization.propertyList(from: data,
//                                                            options: [],
//                                                            format: &plistFormat) as? Dictionary<String, Any>
//    print(plist!)
//}
// 05E73411EB5078B321C31C0B9414F7DA
// 1E475B4D402A3B9AC57D808BBE5B4D7C
// DCEEAB97201B7A750007DC8C
// print(UUID().uuidString.split(separator: "-").joined())

