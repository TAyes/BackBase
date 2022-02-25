//
//  CitiesLoader.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation

protocol CitiesDataSource {
    func loadCities(compeletion: @escaping (Result<[City], NetworkError>) -> Void)
}

final class CitiesLoader: CitiesDataSource {
    func loadCities(compeletion: @escaping (Result<[City], NetworkError>) -> Void) {
        do {
            let response = try Bundle.main.decode([City].self, from: "cities.json")
            compeletion(.success(response))
        } catch {
            compeletion(.failure(.noData))
        }
    }
}
