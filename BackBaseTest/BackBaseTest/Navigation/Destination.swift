//
//  Destination.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation
import UIKit

enum Destination {
    case citiesList
    case map(City)
    var controller: UIViewController {
        switch self {
        case .citiesList:
            return CitiesTableController()
        case let .map(city):
            return MapViewController(with: city)
        }
    }
}

