//
//  HeaderTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class HeaderTableViewCellScreen: UIView {
    
    private lazy var bookImageView: UIImageView = {
        return BookCoverComponent(frame: .zero)
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 20)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var authorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 18)
        label.textColor = .systemGray4
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var statusView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "AccentColor")?.withAlphaComponent(0.2)
        view.layer.cornerRadius = 14
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(named: "AccentColor")
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var statusIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var moreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "ellipsis.circle.fill")?.scalePreservingAspectRatio(targetSize: CGSize(width: 30, height: 30)), for: .normal)
        return button
    }()
    
    func configScreen(superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        addViews(superView)
        configConstraints(superView)
    }
    
    private func addViews(_ superView: UIView) {
        superView.addSubview(self)
        addSubview(bookImageView)
        addSubview(nameLabel)
        addSubview(authorLabel)
        addSubview(statusView)
        statusView.addSubview(statusIcon)
        statusView.addSubview(statusLabel)
        addSubview(moreButton)
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
            
            bookImageView.topAnchor.constraint(equalTo: topAnchor),
            bookImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bookImageView.widthAnchor.constraint(equalToConstant: 120),
            bookImageView.heightAnchor.constraint(equalToConstant: 180),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: bookImageView.trailingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            authorLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            authorLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            authorLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            
            statusView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 10),
            statusView.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            statusView.widthAnchor.constraint(greaterThanOrEqualToConstant: 20),
            statusView.heightAnchor.constraint(greaterThanOrEqualToConstant: 20),
            
            statusIcon.topAnchor.constraint(equalTo: statusView.topAnchor, constant: 6),
            statusIcon.leadingAnchor.constraint(equalTo: statusView.leadingAnchor, constant: 6),
            statusIcon.bottomAnchor.constraint(equalTo: statusView.bottomAnchor, constant: -6),
            
            statusLabel.topAnchor.constraint(equalTo: statusView.topAnchor, constant: 6),
            statusLabel.bottomAnchor.constraint(equalTo: statusView.bottomAnchor, constant: -6),
            statusLabel.leadingAnchor.constraint(equalTo: statusIcon.trailingAnchor, constant: 4),
            statusLabel.trailingAnchor.constraint(equalTo: statusView.trailingAnchor, constant: -6),
            
            moreButton.bottomAnchor.constraint(equalTo: bookImageView.bottomAnchor),
            moreButton.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
        ])
    }
    
    func setUp(book: Book) {
        bookImageView.image = UIImage(named: book.image)
        nameLabel.text = book.name
        authorLabel.text = book.author
        
        switch book.status {
        case .wantToRead:
            statusLabel.text = "WANT TO READ"
            statusIcon.image = UIImage(systemName: "arrowshape.turn.up.right.circle.fill")
        case .inProgress:
            statusLabel.text = "IN PROGRESS"
            statusIcon.image = UIImage(systemName: "clock.fill")
        case .read:
            statusLabel.text = "READ"
            statusIcon.image = UIImage(systemName: "checkmark.circle.fill")
        }
    }
}

