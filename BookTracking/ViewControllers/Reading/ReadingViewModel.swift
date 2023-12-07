//
//  ReadingViewModel.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 06/12/23.
//

import UIKit

class ReadingViewModel {
    private var bookSections: [BookSection] = [
        BookSection(name: "", books: [
            Book(name: "The Effective Executive", author: "Peter F. Drucker", image: "the_effective_executive"),
            Book(name: "Grokking Algorithms", author: "Aditya Y. Bhargava", image: "grokking_algorithms"),
            Book(name: "Design Patterns", author: "Erich Gamma, Richard Helm, and others", image: "design_patterns"),
        ]),
        BookSection(name: "Next Up", books: [
            Book(name: "Testing Swift", author: "Paul Hudson", image: "testing_swift"),
            Book(name: "Hacking with watchOS", author: "Paul Hudson", image: "hacking_with_watchos"),
            Book(name: "Learning Domain-Driven Design", author: "Vlad Khononov", image: "learning_domain_driven_design"),
            Book(name: "Clean Craftsmanship", author: "Robert C. Martin", image: "clean_craftsmanship"),
            Book(name: "Code That Fits in Your Head", author: "Mark Seemann", image: "code_that_fits_in_your_head"),
            Book(name: "Difficult Conversations", author: "Bruce Patton, Douglas Stone, and others", image: "difficult_conversations"),
        ])
    ]
    
    func getSectionNameBy(section: Int) -> String {
        return bookSections[section].name
    }
    
    func getBooksBy(section: Int) -> [Book] {
        return bookSections[section].books
    }
    
    func getHeightForHeaderBy(section: Int) -> CGFloat {
        return getSectionNameBy(section: section).isEmpty ? 0 : 40
    }
    
    var numberOfSections: Int {
        return bookSections.count
    }
}
