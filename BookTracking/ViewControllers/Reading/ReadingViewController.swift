//
//  ViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class ReadingViewController: UIViewController {

    var readingScreen: ReadingViewControllerScreen?
    var viewModel: ReadingViewModel = ReadingViewModel()
    
    override func loadView() {
        readingScreen = ReadingViewControllerScreen()
        view = readingScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
        readingScreen?.configDelegates(delegate: self, dataSource: self)
    }
    
    private func configNavBar() {
        title = "In Progress"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tappedAdd))
        add.tintColor = UIColor(named: "AccentColor")
        navigationItem.rightBarButtonItem = add
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = true
        search.searchBar.placeholder = "Search"
        navigationItem.searchController = search
    }

    @objc func tappedAdd(_ sender: Any) {
        print(#function)
    }
}

extension ReadingViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let name = viewModel.getSectionNameBy(section: section)
        if name.isEmpty {
            return nil
        }
        
        let view = BookHeaderView()
        view.setName(name: name)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return viewModel.getHeightForHeaderBy(section: section)
    }
}

extension ReadingViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BookSectionTableViewCell.identifier) as? BookSectionTableViewCell
        cell?.setUp(books: viewModel.getBooksBy(section: indexPath.section))
        return cell ?? UITableViewCell()
    }
}

extension ReadingViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
    
    
}

