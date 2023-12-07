//
//  BookViewModel.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class BookViewModel {
    
    let book: Book
    
    init(book: Book) {
        self.book = book
    }
    
    func numberOfRowsIn(section: Int) -> Int {
        return 1
    }
    
    func getHeightBy(section: Int) -> CGFloat {
        if section == 0 {
            return 180
        }
        
        return 0
    }
    
}
