//
//  HeaderTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit
import SnapKit

class HeaderTableViewCellScreen: UIView {
    
    private lazy var bookImageView: UIImageView = {
        return BookCoverComponent(frame: .zero)
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 20)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var authorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 18)
        label.textColor = .systemGray2
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var authorIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.tintColor = .systemGray5
        return imageView
    }()
    
    private lazy var statusView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "AccentColor")?.withAlphaComponent(0.2)
        view.layer.cornerRadius = 14
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "AccentColor")
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var statusIcon: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private lazy var moreButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis.circle.fill")?.scalePreservingAspectRatio(targetSize: CGSize(width: 30, height: 30)), for: .normal)
        return button
    }()
    
    private lazy var separatorView: UIView = {
        return SeparatorViewComponent(frame: .zero)
    }()
    
    func configScreen(superView: UIView) {
        addViews(superView)
        configConstraints()
    }
    
    private func addViews(_ superView: UIView) {
        superView.addSubview(self)
        addSubview(bookImageView)
        addSubview(nameLabel)
        addSubview(authorLabel)
        addSubview(authorIcon)
        addSubview(statusView)
        statusView.addSubview(statusIcon)
        statusView.addSubview(statusLabel)
        addSubview(moreButton)
        addSubview(separatorView)
    }
    
    private func configConstraints() {
        snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
        }
        
        bookImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.width.equalTo(120)
            make.height.equalTo(180)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(bookImageView.snp.trailing).offset(20)
            make.trailing.equalToSuperview()
        }
        
        authorLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.leading.equalTo(nameLabel.snp.leading)
        }
        
        authorIcon.snp.makeConstraints { make in
            make.top.equalTo(authorLabel.snp.top)
            make.leading.equalTo(authorLabel.snp.trailing).offset(2)
            make.trailing.lessThanOrEqualTo(nameLabel.snp.trailing)
        }
        
        statusView.snp.makeConstraints { make in
            make.top.equalTo(authorLabel.snp.bottom).offset(10)
            make.leading.equalTo(nameLabel.snp.leading)
            make.width.greaterThanOrEqualTo(20)
            make.height.greaterThanOrEqualTo(20)
        }
        
        statusIcon.snp.makeConstraints { make in
            make.top.equalTo(statusView.snp.top).offset(6)
            make.leading.equalTo(statusView.snp.leading).offset(6)
            make.bottom.equalTo(statusView.snp.bottom).inset(6)
        }
        
        statusLabel.snp.makeConstraints { make in
            make.top.equalTo(statusView.snp.top).offset(6)
            make.leading.equalTo(statusIcon.snp.trailing).offset(4)
            make.trailing.equalTo(statusView.snp.trailing).inset(6)
            make.bottom.equalTo(statusView.snp.bottom).inset(6)
        }
        
        moreButton.snp.makeConstraints { make in
            make.bottom.equalTo(bookImageView.snp.bottom)
            make.trailing.equalTo(nameLabel.snp.trailing)
        }
        
        separatorView.snp.makeConstraints { make in
            make.top.equalTo(bookImageView.snp.bottom).offset(30)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
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

