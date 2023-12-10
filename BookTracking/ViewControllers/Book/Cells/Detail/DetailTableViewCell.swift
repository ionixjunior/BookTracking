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
    private var viewModel: DetailViewModel?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configScreen(superView: contentView)
        screen.configDelegates(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(details: [BookDetail]) {
        viewModel = DetailViewModel(details: details)
    }
    
}

extension DetailTableViewCell: UICollectionViewDelegate {
    
}

extension DetailTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.numberOfItemsInSection ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let viewModel = viewModel else { return UICollectionViewCell() }
        
        if viewModel.isDetailText(indexPath: indexPath) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailTextCollectionViewCell.identifier, for: indexPath) as? DetailTextCollectionViewCell
            cell?.setUp(detail: viewModel.getItemBy(indexPath: indexPath))
            return cell ?? UICollectionViewCell()
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailIconCollectionViewCell.identifier, for: indexPath) as? DetailIconCollectionViewCell
        cell?.setUp(detail: viewModel.getItemBy(indexPath: indexPath))
        return cell ?? UICollectionViewCell()
    }
    
}
