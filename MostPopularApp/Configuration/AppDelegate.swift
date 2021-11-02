//
//  AppDelegate.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 01/11/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: FilterRouter.view())
                    
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

