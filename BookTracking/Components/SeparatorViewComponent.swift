//
//  SeparatorViewComponent.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 08/12/23.
//

import UIKit

class SeparatorViewComponent: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
