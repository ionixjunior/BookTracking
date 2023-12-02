//
//  BookSectionTableViewCell.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

import UIKit

class BookSectionTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: BookSectionTableViewCell.self)

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUp(books: [Book]) {
        
    }

}
