//
//  SceneDelegate.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var navigator: AppNavigator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        setupAppNavigator(windowScene: scene)
    }

}

extension SceneDelegate {
    private func setupAppNavigator(windowScene: UIScene) {
        if let windowScene = windowScene as? UIWindowScene {
            window = UIWindow(windowScene: windowScene)
            window?.makeKeyAndVisible()
            
            navigator = AppNavigator(window: window)
        }
    }
}

