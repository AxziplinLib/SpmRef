//
//  LineEndings.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/27.
//

// MARK: - LineEndings.

/// The file line endings enums corresponding to the "Line Endings" dropdown in Xcode's File Inspector.
public enum LineEndings: UInt {
    case macOSOrUnixLF = 0
    case classicMacOSCR = 1
    case windowsCRLF = 2
}
