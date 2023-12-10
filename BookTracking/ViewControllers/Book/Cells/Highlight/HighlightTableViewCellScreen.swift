//
//  HighlightTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 10/12/23.
//

import UIKit
import SnapKit

class HighlightTableViewCellScreen: UIView {

    private lazy var pageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = .systemGray2
        return label
    }()
    
    private lazy var quoteLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(superView: UIView) {
        superView.addSubview(self)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(pageLabel)
        addSubview(quoteLabel)
    }
    
    private func configConstraints() {
        snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
        }
        
        pageLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        quoteLabel.snp.makeConstraints { make in
            make.top.equalTo(pageLabel.snp.bottom).offset(8)
            make.leading.equalTo(pageLabel.snp.leading)
            make.trailing.equalTo(pageLabel.snp.trailing)
            make.bottom.equalToSuperview()
        }
    }
    
    func setUp(highlight: BookHighlight) {
        pageLabel.text = "PAGE \(highlight.page)"
        
        let quote = "“ \(highlight.quote) ”"
        let attributedString = NSMutableAttributedString(string: quote)
        
        let textAttribute: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 24),
            .backgroundColor: UIColor.accent.withAlphaComponent(0.3)
        ]
        let quoteMarkAttribute: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 30)
        ]
        
        attributedString.addAttributes(textAttribute, range: NSRange(location: 2, length: quote.count - 3))
        attributedString.addAttributes(quoteMarkAttribute, range: NSRange(location: 0, length: 1))
        attributedString.addAttributes(quoteMarkAttribute, range: NSRange(location: quote.count - 1, length: 1))
        
        quoteLabel.attributedText = attributedString
    }
}
