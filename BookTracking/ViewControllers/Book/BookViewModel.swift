//
//  BookViewModel.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

enum Sections: Int, CaseIterable {
    case header = 0
    case description = 1
    case detail = 2
    case highlight = 3
}

class BookViewModel {
    
    let book: Book
    
    init(book: Book) {
        self.book = book
    }
    
    var numberOfSections: Int {
        return Sections.allCases.count
    }
    
    func numberOfRowsIn(section: Int) -> Int {
        if section == Sections.header.rawValue {
            return 1
        }
        
        if section == Sections.description.rawValue {
            return 1
        }
        
        if section == Sections.detail.rawValue {
            return 1
        }
        
        if section == Sections.highlight.rawValue {
            return book.highlights.count
        }
        
        return 0
    }
    
    func getHeightBy(section: Int) -> CGFloat {
        if section == Sections.header.rawValue {
            return 211
        }
        
        if section == Sections.description.rawValue {
            return 148
        }
        
        if section == Sections.detail.rawValue {
            return 128
        }
        
        if section == Sections.highlight.rawValue {
            return UITableView.automaticDimension
        }
        
        return 0
    }
    
    func getHighlightBy(indexPath: IndexPath) -> BookHighlight {
        return book.highlights[indexPath.item]
    }
}
