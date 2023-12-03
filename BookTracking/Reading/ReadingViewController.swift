//
//  ViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class ReadingViewController: UIViewController {

    var readingScreen: ReadingScreen?
    var bookSections: [BookSection] = [
        BookSection(name: "", books: [
            Book(name: "The Effective Executive", author: "Peter F. Drucker", image: "the_effective_executive"),
            Book(name: "Grokking Algorithms", author: "Aditya Y. Bhargava", image: "grokking_algorithms"),
            Book(name: "Design Patterns", author: "Erich Gamma, Richard Helm, and others", image: "design_patterns"),
        ]),
        BookSection(name: "Next Up", books: [
            Book(name: "Testing Swift", author: "Paul Hudson", image: "testing_swift"),
            Book(name: "Hacking with watchOS", author: "Paul Hudson", image: "hacking_with_watchos"),
            Book(name: "Learning Domain-Driven Design", author: "Vlad Khononov", image: "learning_domain_driven_design"),
            Book(name: "Clean Craftsmanship", author: "Robert C. Martin", image: "clean_craftsmanship"),
            Book(name: "Code That Fits in Your Head", author: "Mark Seemann", image: "code_that_fits_in_your_head"),
            Book(name: "Difficult Conversations", author: "Bruce Patton, Douglas Stone, and others", image: "difficult_conversations"),
        ])
    ]
    
    override func loadView() {
        readingScreen = ReadingScreen()
        view = readingScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
        configTableView()
    }
    
    private func configNavBar() {
        title = "In Progress"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tappedAdd))
        add.tintColor = UIColor(named: "Primary")
        navigationItem.rightBarButtonItem = add
    }

    private func configTableView() {
        readingScreen?.tableView.delegate = self
        readingScreen?.tableView.dataSource = self
        readingScreen?.tableView.register(BookSectionTableViewCell.self, forCellReuseIdentifier: BookSectionTableViewCell.identifier)
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
        let name = bookSections[section].name
        if name.isEmpty {
            return nil
        }
        
        let view = BookHeaderView()
        view.nameLabel.text = name
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

extension ReadingViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return bookSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BookSectionTableViewCell.identifier) as? BookSectionTableViewCell
        cell?.setUp(books: bookSections[indexPath.section].books)
        return cell ?? UITableViewCell()
    }
}

