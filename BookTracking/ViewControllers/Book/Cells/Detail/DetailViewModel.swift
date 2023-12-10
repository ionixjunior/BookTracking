//
//  DetailViewModel.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 09/12/23.
//

import UIKit

class DetailViewModel {
    private var details: [BookDetail]
    
    init(details: [BookDetail]) {
        self.details = details
    }
    
    var numberOfItemsInSection: Int {
        return details.count
    }
    
    func getItemBy(indexPath: IndexPath) -> BookDetail {
        return details[indexPath.item]
    }
    
    func isDetailText(indexPath: IndexPath) -> Bool {
        guard let text = details[indexPath.item].valueText else { return false }
        return !text.isEmpty
    }
}
