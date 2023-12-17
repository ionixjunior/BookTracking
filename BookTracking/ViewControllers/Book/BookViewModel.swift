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
        switch Sections(rawValue: section) {
        
        case .header:
            return 1
            
        case .description:
            return 1
            
        case .detail:
            return 1
            
        case .highlight:
            return book.highlights.count
            
        default:
            return 0
            
        }
    }
    
    func getHeightBy(section: Int) -> CGFloat {
        switch Sections(rawValue: section) {
        
        case .header:
            return 211
            
        case .description:
            return 148
            
        case .detail:
            return 128
            
        case .highlight:
            return UITableView.automaticDimension
            
        default:
            return 0
            
        }
    }
    
    func getHighlightBy(indexPath: IndexPath) -> BookHighlight {
        return book.highlights[indexPath.item]
    }
    
    var hasNoHighlights: Bool {
        return book.highlights.isEmpty
    }
}
