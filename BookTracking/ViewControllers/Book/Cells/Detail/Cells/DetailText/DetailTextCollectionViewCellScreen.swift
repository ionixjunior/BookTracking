//
//  DetailTextCollectionViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailTextCollectionViewCellScreen: UIView {
    
    private lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.axis = .vertical
        sv.spacing = 0
        return sv
    }()
    
    private lazy var attributeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray2
        return label
    }()
    
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 24)
        label.textColor = .black
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
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
        configConstraints(superView)
    }
    
    private func addViews(_ superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        superView.addSubview(self)
        addSubview(stackView)
        stackView.addArrangedSubview(attributeLabel)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(descriptionLabel)
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor, constant: 20),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -20),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    func setUp(detail: BookDetail) {
        attributeLabel.text = detail.attribute
        valueLabel.text = detail.valueText
        descriptionLabel.text = detail.description
    }
    
}
