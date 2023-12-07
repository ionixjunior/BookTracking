//
//  BookViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class BookViewController: UIViewController {

    private var screen: BookViewControllerScreen?
    
    override func loadView() {
        screen = BookViewControllerScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
