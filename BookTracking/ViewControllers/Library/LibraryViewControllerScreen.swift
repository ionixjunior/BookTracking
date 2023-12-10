//
//  LibraryScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 03/12/23.
//

import UIKit
import SnapKit

class LibraryViewControllerScreen: UIView {
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UILabel.appearance().font.fontName, size: 30)
        label.textColor = .black
        label.text = "Coming soon!"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(textLabel)
    }
    
    private func configConstraints() {
        textLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
