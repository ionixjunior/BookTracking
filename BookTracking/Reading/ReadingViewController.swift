//
//  ViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class ReadingViewController: UIViewController {

    var readingScreen: ReadingScreen?
    
    override func loadView() {
        readingScreen = ReadingScreen()
        view = readingScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

