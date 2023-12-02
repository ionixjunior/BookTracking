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
        readingScreen?.tableView.delegate = self
        readingScreen?.tableView.dataSource = self
    }


}

extension ReadingViewController: UITableViewDelegate {
    
}

extension ReadingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

