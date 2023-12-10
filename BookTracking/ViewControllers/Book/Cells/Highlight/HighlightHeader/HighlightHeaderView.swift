//
//  HighlightHeaderView.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 10/12/23.
//

import UIKit
import SnapKit

class HighlightHeaderView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Highlights"
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 24)
        label.textColor = .black
        return label
    }()
    
    private lazy var navigateIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.tintColor = .systemGray5
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(titleLabel)
        addSubview(navigateIcon)
    }
    
    private func configConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }
        
        navigateIcon.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(20)
            make.centerY.equalToSuperview()
        }
    }
}
