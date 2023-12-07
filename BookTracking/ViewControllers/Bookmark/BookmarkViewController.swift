//
//  BookmarkViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 03/12/23.
//

import UIKit

class BookmarkViewController: UIViewController {

    var bookmarkScreen: BookmarkViewControllerScreen?
    
    override func loadView() {
        bookmarkScreen = BookmarkViewControllerScreen()
        view = bookmarkScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
