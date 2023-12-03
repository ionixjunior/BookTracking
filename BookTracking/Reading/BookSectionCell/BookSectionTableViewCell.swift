//
//  BookSectionTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class BookSectionTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: BookSectionTableViewCell.self)
    
    var bookSectionScreen: BookSectionScreen?
    var books: [Book] = []
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        bookSectionScreen = BookSectionScreen()
        bookSectionScreen?.configScreen(view: contentView)
        configCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func configCollectionView() {
        bookSectionScreen?.collectionView.delegate = self
        bookSectionScreen?.collectionView.dataSource = self
        bookSectionScreen?.collectionView.register(BookCollectionViewCell.self, forCellWithReuseIdentifier: BookCollectionViewCell.identifier)
    }
    
    func setUp(books: [Book]) {
        self.books = books
    }

}

extension BookSectionTableViewCell: UICollectionViewDelegate {
    
}

extension BookSectionTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookCollectionViewCell.identifier, for: indexPath) as? BookCollectionViewCell
        cell?.setUp(book: books[indexPath.item])
        return cell ?? UICollectionViewCell()
    }
}

extension BookSectionTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 180)
    }
}
