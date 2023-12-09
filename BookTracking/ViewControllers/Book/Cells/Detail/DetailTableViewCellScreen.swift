//
//  DetailTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailTableViewCellScreen: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(superView: UIView) {
        superView.addSubview(self)
    }
    
    private func addViews(_ superView: UIView) {
        
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor, constant: 20),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -20),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
        ])
    }
    
}
