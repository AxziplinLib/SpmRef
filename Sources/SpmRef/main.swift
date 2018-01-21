//
//  main.swift
//  SpmRef
//
//  Created by devedbox on 2018/1/20.
//

import SpmRefKit
import XcodebuildKit
import Basic
import Foundation

// Foundation.Process.launchedProcess(launchPath: "/bin/echo", arguments: ["This is an echo message."])

let result = try Process.checkNonZeroExit(args: "xcodebuild", "-showsdks")
print(result)

print("Hello, World!")
