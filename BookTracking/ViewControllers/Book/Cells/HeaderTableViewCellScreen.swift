//
//  HeaderTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class HeaderTableViewCellScreen: UIView {
    
    private lazy var bookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.layer.borderColor = UIColor.systemGray5.cgColor
        imageView.layer.borderWidth = 1
        return imageView
    }()
    
    func configScreen(superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        addViews(superView)
        configConstraints(superView)
    }
    
    private func addViews(_ superView: UIView) {
        superView.addSubview(self)
        addSubview(bookImageView)
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: 20),
            
            bookImageView.topAnchor.constraint(equalTo: topAnchor),
            bookImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bookImageView.widthAnchor.constraint(equalToConstant: 120),
            bookImageView.heightAnchor.constraint(equalToConstant: 180),
        ])
    }
    
    func setUp(book: Book) {
        bookImageView.image = UIImage(named: book.image)
    }
}
