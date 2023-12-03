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
        viewControllers = [reading]
        
        guard let items = tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "book.fill")
        items[0].setImageOnly()
    }
    
    
}

extension UITabBarItem {
    func setImageOnly(){
        imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.clear], for: .selected)
        setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.clear], for: .normal)
    }
 }
