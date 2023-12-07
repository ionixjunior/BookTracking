//
//  HeaderTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class HeaderTableViewCellScreen: UIView {
    func configScreen(superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        superView.addSubview(self)
        addViews()
        configConstraints(superView)
    }
    
    private func addViews() {
        
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
        ])
    }
}
