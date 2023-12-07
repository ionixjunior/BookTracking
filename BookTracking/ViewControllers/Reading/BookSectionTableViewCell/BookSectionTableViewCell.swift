//
//  BookSectionTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

protocol BookSectionTableViewCellProtocol: AnyObject {
    func bookTapped(book: Book)
}

class BookSectionTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: BookSectionTableViewCell.self)
    
    var bookSectionScreen: BookSectionTableViewCellScreen?
    var viewModel: BookSectionViewModel?
    
    private weak var _delegate: BookSectionTableViewCellProtocol?
    var delegate: BookSectionTableViewCellProtocol? {
        get { return _delegate }
        set { _delegate = newValue }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        bookSectionScreen = BookSectionTableViewCellScreen()
        bookSectionScreen?.configScreen(view: contentView)
        bookSectionScreen?.configDelegates(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUp(books: [Book]) {
        viewModel = BookSectionViewModel(books: books)
    }

}

extension BookSectionTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        
        let book = viewModel.getBookBy(indexPath: indexPath)
        delegate?.bookTapped(book: book)
    }
}

extension BookSectionTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.numberOfItemsInSection ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let viewModel = viewModel else { return UICollectionViewCell() }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookCollectionViewCell.identifier, for: indexPath) as? BookCollectionViewCell
        cell?.setUp(book: viewModel.getBookBy(indexPath: indexPath))
        return cell ?? UICollectionViewCell()
    }
}

extension BookSectionTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }
}
