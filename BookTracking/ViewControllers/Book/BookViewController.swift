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
    
    init(book: Book) {
        super.init(nibName: nil, bundle: nil)
        viewModel = BookViewModel(book: book)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let viewModel = viewModel else { return nil }
        
        if section == Sections.highlight.rawValue {
            return viewModel.hasNoHighlights ? nil : HighlightHeaderView()
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard let viewModel = viewModel else { return 0 }
        
        if section == Sections.highlight.rawValue {
            return viewModel.hasNoHighlights ? 0 : 30
        }
        
        return 0
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
        guard let viewModel = viewModel else { return UITableViewCell() }
        
        switch Sections(rawValue: indexPath.section) {
            
        case .header:
            let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier, for: indexPath) as? HeaderTableViewCell
            cell?.setUp(book: viewModel.book)
            return cell ?? UITableViewCell()
            
        case .description:
            let cell = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.identifier, for: indexPath) as? DescriptionTableViewCell
            cell?.setUp(book: viewModel.book)
            return cell ?? UITableViewCell()
            
        case .detail:
            let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as? DetailTableViewCell
            cell?.setUp(details: viewModel.book.details)
            return cell ?? UITableViewCell()
            
        case .highlight:
            let cell = tableView.dequeueReusableCell(withIdentifier: HighlightTableViewCell.identifier, for: indexPath) as? HighlightTableViewCell
            cell?.setUp(highlight: viewModel.getHighlightBy(indexPath: indexPath))
            return cell ?? UITableViewCell()
            
        default:
            return UITableViewCell()
            
        }
    }
}
