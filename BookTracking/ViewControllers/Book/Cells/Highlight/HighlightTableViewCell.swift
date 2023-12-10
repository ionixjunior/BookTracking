//
//  HighlightTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 10/12/23.
//

import UIKit

class HighlightTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: HighlightTableViewCell.self)
    private let screen: HighlightTableViewCellScreen = HighlightTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configScreen(superView: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
