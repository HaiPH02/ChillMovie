//
//  HomeNavigator.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import UIKit

protocol HomeNavigatorProtocol: BaseNavigator {
    
}

class HomeNavigator: HomeNavigatorProtocol {
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    var navigationController: UINavigationController
}
