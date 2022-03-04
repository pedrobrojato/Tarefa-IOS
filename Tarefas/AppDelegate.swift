//
//  AppDelegate.swift
//  Tarefas
//
//  Created by Pedro Brojato on 02/03/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow()
        let tarefasViewController = TarefasViewController(nibName: nil, bundle: nil)
        let navigation = UINavigationController(rootViewController: tarefasViewController)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        return true
    }

    
}

