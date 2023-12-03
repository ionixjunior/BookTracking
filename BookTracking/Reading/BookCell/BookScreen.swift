//
//  BookScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class BookScreen: UIView {
    var bookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(view: UIView) {
        addViews(view)
        configConstraints(view)
    }
    
    private func addViews(_ view: UIView) {
        view.addSubview(bookImageView)
    }
    
    private func configConstraints(_ view: UIView) {
        NSLayoutConstraint.activate([
            bookImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bookImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            bookImageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            bookImageView.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])
    }
}
