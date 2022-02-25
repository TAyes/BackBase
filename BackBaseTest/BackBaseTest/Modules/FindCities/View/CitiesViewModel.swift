//
//  CitiesViewModel.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation

protocol CitiesViewModelType {
    var citiesList: Observable<[City]> { get }
    var error: Observable<String?> { get }
    var isLoading: Observable<Bool> { get }
    func search(for city: String)
    func searchCanceled()
}

final class CitiesViewModel: CitiesViewModelType {
    private let citiesLoader: CitiesDataSource
    let citiesList: Observable<[City]> = .init([])
    let isLoading: Observable<Bool> = .init(false)
    let error: Observable<String?> = .init(nil)
    private let dataContainer: Trie = .init()
    private var pendingSearch: String?
    private var isDataReady = false {
        didSet {
            guard isDataReady else { return }
            excutePendingSearch()
        }
    }

    init(citiesLoader: CitiesDataSource = CitiesLoader()) {
        self.citiesLoader = citiesLoader
        loadData()
    }

    func search(for city: String) {
        DispatchQueue.global().async { [weak self] in
            guard let self = self, !city.isEmpty else { return }
            self.isLoading.next(true)
            guard self.isDataReady else {
                self.pendingSearch = city
                return
            }
            let cities = self.dataContainer.findWordsWithPrefix(prefix: city)
                .compactMap { $0 }
                .sorted()
            self.citiesList.next(cities)
            self.isLoading.next(false)
        }
    }

    func searchCanceled() {
        isLoading.next(false)
        citiesList.next([])
    }
}

private extension CitiesViewModel {
    func excutePendingSearch() {
        guard let text = pendingSearch else { return }
        search(for: text)
    }

    func loadData() {
        DispatchQueue.global().async { [weak self] in
            guard let self = self else { return }
            self.isDataReady = false
            self.citiesLoader.loadCities { data in
                switch data {
                case let .success(response):
                    response.forEach {
                        self.dataContainer.insert(city: $0)
                    }
                case let .failure(error):
                    self.error.next(error.localizedDescription)
                }
                self.isDataReady = true
            }
        }
    }
}
