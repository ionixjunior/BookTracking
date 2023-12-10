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
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var quoteLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
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
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        pageLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(4)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview().inset(4)
        }
        
        quoteLabel.snp.makeConstraints { make in
            make.top.equalTo(pageLabel.snp.bottom).offset(4)
            make.leading.equalTo(pageLabel.snp.leading)
            make.trailing.equalTo(pageLabel.snp.trailing)
            make.bottom.equalToSuperview()
        }
    }
    
}
