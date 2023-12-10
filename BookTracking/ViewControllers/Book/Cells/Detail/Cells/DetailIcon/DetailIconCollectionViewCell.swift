//
//  DetailIconCollectionViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailIconCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: DetailIconCollectionViewCell.self)
    
    private let screen: DetailIconCollectionViewCellScreen = DetailIconCollectionViewCellScreen()
    
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
