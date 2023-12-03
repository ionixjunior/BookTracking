//
//  BookmarkViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 03/12/23.
//

import UIKit

class BookmarkViewController: UIViewController {

    var bookmarkScreen: BookmarkScreen?
    
    override func loadView() {
        bookmarkScreen = BookmarkScreen()
        view = bookmarkScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
