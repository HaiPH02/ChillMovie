//
//  AppNavigator.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import UIKit

protocol AppNavigatorProtocol: BaseNavigator {
    var window: UIWindow? { get }
    func setHomeViewController()
    func setRootViewController()
}

class AppNavigator: AppNavigatorProtocol {
    
    init(window: UIWindow?) {
        self.window = window
        setHomeViewController()
    }
    
    var window: UIWindow?
    var navigationController: UINavigationController = UINavigationController()
    
    func setHomeViewController() {
        let viewController = MainTabBarViewController()
        
        navigationController.setViewControllers([viewController], animated: true)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func setRootViewController() {
        let view = OnboardingView()
        let viewController = BaseViewController(rootView: view)
        
        navigationController.setViewControllers([viewController], animated: true)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
