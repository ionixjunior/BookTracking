//
//  BookCollectionViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    var bookScreen: BookCollectionViewCellScreen?
    
    static let identifier: String = String(describing: BookCollectionViewCell.self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bookScreen = BookCollectionViewCellScreen()
        bookScreen?.configScreen(view: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(book: Book) {
        bookScreen?.bookImageView.image = UIImage(named: book.image)
    }
}
