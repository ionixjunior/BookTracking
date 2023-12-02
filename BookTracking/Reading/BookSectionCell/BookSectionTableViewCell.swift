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
    }
    
    func setUp(books: [Book]) {
        
    }

}

extension BookSectionTableViewCell: UICollectionViewDelegate {
    
}

extension BookSectionTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
