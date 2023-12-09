//
//  DetailTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: DetailTableViewCell.self)
    
    private let screen: DetailTableViewCellScreen = DetailTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configScreen(superView: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
