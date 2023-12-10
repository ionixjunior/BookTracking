//
//  BookCoverComponent.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 08/12/23.
//

import UIKit

class BookCoverComponent: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentMode = .scaleAspectFill
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderColor = UIColor.systemGray5.cgColor
        layer.borderWidth = 1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
