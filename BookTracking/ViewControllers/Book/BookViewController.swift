//
//  BookViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class BookViewController: UIViewController {

    private var screen: BookViewControllerScreen?
    private var viewModel: BookViewModel?
    
    private var book: Book
    
    init(book: Book) {
        self.book = book
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        viewModel = BookViewModel(book: book)
        screen = BookViewControllerScreen()
        screen?.configDelegates(delegate: self, dataSource: self)
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension BookViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel?.getHeightBy(section: indexPath.section) ?? 0
    }
}

extension BookViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel?.numberOfSections ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRowsIn(section: section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == Sections.header.rawValue {
            let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifider, for: indexPath) as? HeaderTableViewCell
            cell?.setUp(book: book)
            return cell ?? UITableViewCell()
        }
        
        if indexPath.section == Sections.description.rawValue {
            let cell = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.identifider, for: indexPath) as? DescriptionTableViewCell
            cell?.setUp(book: book)
            return cell ?? UITableViewCell()
        }
        
        return UITableViewCell()
    }
}
