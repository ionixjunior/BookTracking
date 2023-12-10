//
//  BookHeaderView.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit
import SnapKit

class BookHeaderView: UIView {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 24)
        label.textColor = .black
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(nameLabel)
    }
    
    private func configConstraints() {
        nameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
        }
    }
    
    func setName(name: String) {
        nameLabel.text = name
    }
}
