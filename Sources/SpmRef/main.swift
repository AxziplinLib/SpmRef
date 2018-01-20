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

// try exec(path: "/bin/echo", args: [])
let process = Process()
process.launchPath = "/bin/echo"
process.arguments = ["This is an echo message."]
process.launch()
process.waitUntilExit()

print("Hello, World!")
