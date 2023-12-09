//
//  DescriptionTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {
    
    static let identifider: String = String(describing: DescriptionTableViewCell.self)
    
    var screen: DescriptionTableViewCellScreen = DescriptionTableViewCellScreen()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configScreen(superView: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
