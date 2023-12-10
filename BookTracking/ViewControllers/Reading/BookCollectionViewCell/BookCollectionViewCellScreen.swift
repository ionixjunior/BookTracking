//
//  BookScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit
import SnapKit

class BookCollectionViewCellScreen: UIView {
    private lazy var bookImageView: UIImageView = {
        return BookCoverComponent(frame: .zero)
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(view: UIView) {
        addViews(view)
        configConstraints()
    }
    
    private func addViews(_ view: UIView) {
        view.addSubview(bookImageView)
    }
    
    private func configConstraints() {
        bookImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview()
        }
    }
    
    func setUp(book: Book) {
        bookImageView.image = UIImage(named: book.image)
    }
}
