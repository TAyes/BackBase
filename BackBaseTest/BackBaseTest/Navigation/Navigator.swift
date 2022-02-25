//
//  Navigator.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation
import UIKit

final class AppNavigator {
    static let shared = AppNavigator()
    private static var navigator: UINavigationController!

    private init() {}

    func set(window: UIWindow) {
        AppNavigator.navigator = UINavigationController(rootViewController: Destination.citiesList.controller)
        window.rootViewController = AppNavigator.navigator
        window.makeKeyAndVisible()
    }

    func push(_ dest: Destination) {
        AppNavigator.navigator.pushViewController(dest.controller, animated: true)
    }
}

