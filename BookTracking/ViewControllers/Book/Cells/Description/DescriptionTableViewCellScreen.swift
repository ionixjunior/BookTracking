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
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 24)
        label.textColor = .black
        return label
    }()
    
    func configScreen(superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        addViews(superView)
        configConstraints(superView)
    }
    
    private func addViews(_ superView: UIView) {
        superView.addSubview(descriptionLabel)
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: superView.topAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: superView.trailingAnchor),
        ])
    }

}
