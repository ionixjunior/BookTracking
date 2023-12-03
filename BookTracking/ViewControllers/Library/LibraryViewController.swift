//
//  LibraryViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 03/12/23.
//

import UIKit

class LibraryViewController: UIViewController {

    var libraryScreen: LibraryScreen?
    
    override func loadView() {
        libraryScreen = LibraryScreen()
        view = libraryScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
