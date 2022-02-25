//
//  UIViewController+Error.swift
//  BackBaseTest
//
//  Created by shisheo portal on 25/02/2022.
//

import Foundation
import UIKit

public extension UIViewController {
    func show(error: String) {
        let alert = UIAlertController(title: nil, message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
