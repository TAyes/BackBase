//
//  City.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation

struct City: Decodable {
    let name: String
    let id: Int
    let country: String
    let coord: Coordinate?

    enum CodingKeys: String, CodingKey {
        case country, name
        case id = "_id"
        case coord
    }
}

extension City: Hashable {
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Coordinate: Codable, Hashable {
    let lon, lat: Double
}

extension City {
    var address: String { "\(name), \(country)" }
    var location: String? {
        guard let lat = coord?.lat,
            let lon = coord?.lon else { return .none }
        return "\(lat), \(lon)"
    }
}
