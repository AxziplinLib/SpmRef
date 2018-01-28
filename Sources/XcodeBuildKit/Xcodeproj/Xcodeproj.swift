//
//  Xcodeproj.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/26.
//

import Foundation
import CryptoSwift

public protocol PBXObject {
    var reference: String { get }
    var isa: String { get }
}

extension PBXObject {
    public var reference: String {
        return
            UUID()
                .uuidString
                .replacingOccurrences(of: "-", with: "")
                .uppercased()
    }
    
    public var isa: String { return String(describing: type(of: self)) }
}
