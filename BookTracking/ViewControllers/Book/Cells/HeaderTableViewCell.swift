//
//  HeaderTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    static let identifider: String = String(describing: HeaderTableViewCell.self)
    
    var screen: HeaderTableViewCellScreen = HeaderTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configScreen(superView: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
