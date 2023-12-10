//
//  DetailTextCollectionViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit
import SnapKit

class DetailTextCollectionViewCellScreen: UIView {
    
    private lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.axis = .vertical
        sv.spacing = 0
        return sv
    }()
    
    private lazy var attributeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .systemGray2
        return label
    }()
    
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 24)
        label.textColor = .black
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.textColor = .systemGray2
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(superView: UIView) {
        addViews(superView)
        configConstraints()
    }
    
    private func addViews(_ superView: UIView) {
        superView.addSubview(self)
        addSubview(stackView)
        stackView.addArrangedSubview(attributeLabel)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(descriptionLabel)
    }
    
    private func configConstraints() {
        snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func setUp(detail: BookDetail) {
        attributeLabel.text = detail.attribute
        valueLabel.text = detail.valueText
        descriptionLabel.text = detail.description
    }
    
}
