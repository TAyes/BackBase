//
//  Array+Sort.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation

extension Array where Element == City {
    func sorted() -> [City] {
        return sorted { ($0.name, $0.country) < ($1.name, $1.country) }
    }
}
