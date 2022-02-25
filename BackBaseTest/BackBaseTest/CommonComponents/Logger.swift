//
//  Logger.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation

enum LoggingLevels {
    var isEnabled: Bool { return true }
    case info, error
    var value: String {
        switch self {
        case .info:
            return ">INFO>"
        case .error:
            return ">>ERROR>"
        }
    }
}

func log(_ value: Any?..., level: LoggingLevels = .info) {
    #if DEBUG
        if level.isEnabled { print("\(level.value) \(value)") }
    #endif
}
