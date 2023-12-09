//
//  DescriptionTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DescriptionTableViewCellScreen: UIView {
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 24)
        label.textColor = .black
        return label
    }()
    
    private lazy var bookDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray2
        label.lineBreakMode = .byTruncatingTail
        label.numberOfLines = 3
        return label
    }()
    
    private lazy var separatorView: UIView = {
        return SeparatorViewComponent(frame: .zero)
    }()
    
    func configScreen(superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        addViews(superView)
        configConstraints(superView)
    }
    
    private func addViews(_ superView: UIView) {
        superView.addSubview(self)
        addSubview(descriptionLabel)
        addSubview(bookDescriptionLabel)
        addSubview(separatorView)
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            bookDescriptionLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            bookDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            bookDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            separatorView.topAnchor.constraint(equalTo: bookDescriptionLabel.bottomAnchor, constant: 30),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1),
        ])
    }

    func setUp(book: Book) {
        bookDescriptionLabel.text = book.description
    }
}
