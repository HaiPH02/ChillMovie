//
//  MainTabBarViewController.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import UIKit

class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        setupTabBar()
    }
    
    private func setupTabBar() {
        self.viewControllers = [buildMovie()]
    }
}

extension MainTabBarViewController {
    private func buildMovie() -> UINavigationController {
        let navigationController = UINavigationController()
        
        let navigator = HomeNavigator(navigationController: navigationController)
        
        let getGenresUseCase = Application.shared.useCaseProvider.getGenresUseCase()
        
        let viewModel = HomeViewModel(navigator: navigator, getGenresUseCase: getGenresUseCase)
        let view = HomeView(viewModel: viewModel)
        
        let viewController = BaseViewController(rootView: view)
        
        navigationController.setViewControllers([viewController], animated: false)
        
        navigationController.tabBarItem = UITabBarItem(title: "Movie", image: nil, tag: 0)
        
        return navigationController
    }
}
