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
    
    private var books: UINavigationController = {
        let vc = LibraryViewController()
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }()
    
    private var bookmark: UINavigationController = {
        let vc = BookmarkViewController()
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }()
    
    private var profile: UINavigationController = {
        let vc = ProfileViewController()
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.systemGray5.cgColor
        viewControllers = [reading, books, bookmark, profile]
        
        guard let items = tabBar.items else { return }
        
        let images = ["book.fill", "books.vertical.fill", "bookmark.fill", "person.fill"]
        
        for index in images.indices {
            items[index].image = UIImage(systemName: images[index])
            items[index].setImageOnly()
        }
    }
    
    
}

extension UITabBarItem {
    func setImageOnly(){
        imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.clear], for: .selected)
        setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.clear], for: .normal)
    }
 }
