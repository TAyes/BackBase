//
//  Data+Decoder.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation
extension Data {
    func parse<T: Decodable>() -> T? {
        do {
            return try JSONDecoder().decode(T.self, from: self)
        } catch let error {
            log(error)
        }
        return nil
    }
}
