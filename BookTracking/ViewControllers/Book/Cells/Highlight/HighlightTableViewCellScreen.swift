//
//  HighlightTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 10/12/23.
//

import UIKit

class HighlightTableViewCellScreen: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(superView: UIView) {
        superView.addSubview(self)
    }
    
}
