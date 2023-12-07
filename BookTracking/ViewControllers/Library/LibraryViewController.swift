//
//  LibraryViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 03/12/23.
//

import UIKit

class LibraryViewController: UIViewController {

    var libraryScreen: LibraryViewControllerScreen?
    
    override func loadView() {
        libraryScreen = LibraryViewControllerScreen()
        view = libraryScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
