//
//  TabBarViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    private var reading: UINavigationController = {
        let vc = ReadingViewController()
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            reading
        ]
    }
    
    
}
