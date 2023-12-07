//
//  BookSectionTableViewCellViewModel.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class BookSectionViewModel {
    private var books: [Book]
    
    init(books: [Book]) {
        self.books = books
    }
    
    var numberOfItemsInSection: Int {
        return books.count
    }
    
    func getBookBy(indexPath: IndexPath) -> Book {
        return books[indexPath.item]
    }
}
