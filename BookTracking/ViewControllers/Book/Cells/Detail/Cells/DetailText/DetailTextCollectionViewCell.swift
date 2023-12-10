//
//  DetailTextCollectionViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailTextCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: DetailTextCollectionViewCell.self)
    
    private let screen: DetailTextCollectionViewCellScreen = DetailTextCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        screen.configScreen(superView: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(detail: BookDetail) {
        screen.setUp(detail: detail)
    }
    
}
