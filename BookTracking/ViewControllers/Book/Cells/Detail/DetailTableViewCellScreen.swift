//
//  DetailTableViewCellScreen.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailTableViewCellScreen: UIView {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 120, height: 108)
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        cv.register(DetailTextCollectionViewCell.self, forCellWithReuseIdentifier: DetailTextCollectionViewCell.identifier)
        cv.register(DetailIconCollectionViewCell.self, forCellWithReuseIdentifier: DetailIconCollectionViewCell.identifier)
        
        return cv
    }()
    
    private lazy var separatorView: UIView = {
        return SeparatorViewComponent(frame: .zero)
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScreen(superView: UIView) {
        addViews(superView)
        configConstraints(superView)
    }
    
    private func addViews(_ superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        superView.addSubview(self)
        addSubview(collectionView)
        addSubview(separatorView)
    }
    
    private func configConstraints(_ superView: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor, constant: 20),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -20),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            separatorView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    func configDelegates(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
}
