//
//  Book.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 02/12/23.
//

enum BookStatus {
    case wantToRead
    case inProgress
    case read
}

struct Book {
    var name: String
    var author: String
    var image: String
    var status: BookStatus
}
