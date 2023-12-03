//
//  AppDelegate.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configAppearance()
        return true
    }
    
    private func configAppearance() {
        UILabel.appearance().font = UIFont(name: "Georgia-Bold", size: 12)
        
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 17)!
        ]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 34)!
        ]
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

