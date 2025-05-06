//
//  BaseNavigator.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import UIKit

protocol BaseNavigator {
    var navigationController: UINavigationController { get }
    func dismiss()
    func pop()
}

extension BaseNavigator {
    func dismiss() {
        navigationController.dismiss(animated: true)
    }
    
    func pop() {
        navigationController.popViewController(animated: true)
    }
}
