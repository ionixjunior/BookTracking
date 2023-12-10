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
            Book(name: "The Effective Executive", author: "Peter F. Drucker", image: "the_effective_executive", status: .inProgress, description: """
What makes an effective executive?
The measure of the executive, Peter F. Drucker reminds us, is the ability to "get the right things done." This usually involves doing what other people have overlooked as well as avoiding what is unproductive. Intelligence, imagination, and knowledge may all be wasted in an executive job without the acquired habits of mind that mold them into results.

Drucker identifies five practices essential to business effectiveness that can, and must, be learned:
Managing time
Choosing what to contribute to the organization
Knowing where and how to mobilize strength for best effect
Setting the right priorities
Knitting all of them together with effective decision-making
Ranging widely through the annals of business and government, Peter F. Drucker demonstrates the distinctive skill of the executive and offers fresh insights into old and seemingly obvious business situations.
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Leadership"),
    BookDetail(attribute: "RELEASED", valueText: "2016", valueIcon: nil, description: "3 January"),
    BookDetail(attribute: "LENGTH", valueText: "178", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: [
    BookHighlight(page: 2, quote: "Intelligence, imagination, and knowledge are essential resources, but only effectiveness converts them into results. By themselves, they only set limits to what can be attained."),
    BookHighlight(page: 2, quote: "For manual work, we need only efficiency; that is, the ability to do things right rather than the ability to get the rights things done."),
    BookHighlight(page: 4, quote: "Working on the right things is what makes knowledge work effective."),
    BookHighlight(page: 6, quote: "Asked by the reporter, \"How in this confused situation can you retain command?\" the young captain said: \"Around here, I am only the guy who is responsible. If these men don't know what to do when they run into an enemy in the jungle, I'm too far away to tell them. My job is to make sure they know. What they do depends on the situation which only they can judge. The responsibility is always mine, but the decision lies with whoever is on the spot.\"")
]),
            Book(name: "Grokking Algorithms", author: "Aditya Y. Bhargava", image: "grokking_algorithms", status: .inProgress, description: """
Grokking Algorithms is a fully illustrated, friendly guide that teaches you how to apply common algorithms to the practical problems you face every day as a programmer. You'll start with sorting and searching and, as you build up your skills in thinking algorithmically, you'll tackle more complex concerns such as data compression and artificial intelligence. Each carefully presented example includes helpful diagrams and fully annotated code samples in Python.

Learning about algorithms doesn't have to be boring! Get a sneak peek at the fun, illustrated, and friendly examples you'll find in Grokking Algorithms on Manning Publications' YouTube channel.

Continue your journey into the world of algorithms with Algorithms in Motion, a practical, hands-on video course available exclusively at Manning.com (www.manning.com/livevideo/algorithms-​in-motion).

Purchase of the print book includes a free eBook in PDF, Kindle, and ePub formats from Manning Publications.

About the Technology

An algorithm is nothing more than a step-by-step procedure for solving a problem. The algorithms you'll use most often as a programmer have already been discovered, tested, and proven. If you want to understand them but refuse to slog through dense multipage proofs, this is the book for you. This fully illustrated and engaging guide makes it easy to learn how to use the most important algorithms effectively in your own programs.

About the Book

Grokking Algorithms is a friendly take on this core computer science topic. In it, you'll learn how to apply common algorithms to the practical programming problems you face every day. You'll start with tasks like sorting and searching. As you build up your skills, you'll tackle more complex problems like data compression and artificial intelligence. Each carefully presented example includes helpful diagrams and fully annotated code samples in Python. By the end of this book, you will have mastered widely applicable algorithms as well as how and when to use them.

What's Inside

Covers search, sort, and graph algorithms
Over 400 pictures with detailed walkthroughs
Performance trade-offs between algorithms
Python-based code samples

About the Reader
This easy-to-read, picture-heavy introduction is suitable for self-taught programmers, engineers, or anyone who wants to brush up on algorithms.

About the Author

Aditya Bhargava is a Software Engineer with a dual background in Computer Science and Fine Arts. He blogs on programming at adit.io.

Table of Contents

Introduction to algorithms
Selection sort
Recursion
Quicksort
Hash tables
Breadth-first search
Dijkstra's algorithm
Greedy algorithms
Dynamic programming
K-nearest neighbors
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "2016", valueIcon: nil, description: "30 May"),
    BookDetail(attribute: "LENGTH", valueText: "256", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: [
    BookHighlight(page: 1, quote: "The book is known for its accessible and easy-to-understand explanations of fundamental computer science algorithms. It uses real-world examples and analogies to explain complex concepts.")
]),
            Book(name: "Design Patterns", author: "Erich Gamma, Richard Helm, and others", image: "design_patterns", status: .inProgress, description: """
The Gang of Four’s seminal catalog of 23 patterns to solve commonly occurring design problems
Patterns allow designers to create more flexible, elegant, and ultimately reusable designs without having to rediscover the design solutions themselves. Highly influential, Design Patterns is a modern classic that introduces what patterns are and how they can help you design object-oriented software and provides a catalog of simple solutions for those already programming in at last one object-oriented programming language.

 Each pattern:

Describes the circumstances in which it is applicable, when it can be applied in view of other design constraints, and the consequences and trade-offs of using the pattern within a larger design
Is compiled from real systems and based on real-world examples
Includes downloadable C++ source code that demonstrates how patterns can be implemented and Python
From the preface: “Once you the design patterns and have had an ‘Aha!’ (and not just a ‘Huh?’) experience with them, you won't ever think about object-oriented design in the same way. You'll have insights that can make your own designs more flexible, modular, reusable, and understandable - which is why you're interested in object-oriented technology in the first place, right?”
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "1994", valueIcon: nil, description: "31 October"),
    BookDetail(attribute: "LENGTH", valueText: "394", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: [
    BookHighlight(page: 3, quote: "Each design pattern is described in detail, including its intent, motivation, structure, participants, collaborations, consequences, and implementation guidelines. Examples are often provided in Java and Smalltalk."),
    BookHighlight(page: 10, quote: "Despite being published in the mid-1990s, the concepts and principles outlined in the book remain highly relevant in modern software development. Design patterns are considered timeless solutions to recurring design problems.")
]),
        ]),
        BookSection(name: "Next Up", books: [
            Book(name: "Testing Swift", author: "Paul Hudson", image: "testing_swift", status: .wantToRead, description: """
Testing Swift will give you a thorough grounding in the key testing techniques when working in app development. You'll learn how to benchmark performance, detect regressions, mock components, refactor for testability, and more.
While reading, you'll learn all this and more:
Structuring your code to make unit testing easier and more reliable.
Automating your test process so that you can identify problems faster.
Using the red-green-refactor approach to building high-quality, testable code efficiently.
Building a solid test suite even in projects where tests are lacking or perhaps missing altogether.
When code coverage is a useful metric to track your progress – and when it isn't.
Integrating a sustainable approach to testing that helps your team work faster and with fewer regressions.
How to separate your model layer from your presentation layer, how to create useful stubs and mocks the hassle-free way, how to build a custom approach to testing that fits your company, project, and team – and more!
Testing Swift also includes complete projects that show you the techniques in action, so you can see how to apply what you've learned in real-world code. If you're serious about writing better code, it's time to step up your game and test your Swift – buy Testing Swift today!
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "2016", valueIcon: nil, description: "30 August"),
    BookDetail(attribute: "LENGTH", valueText: "248", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: []),
            Book(name: "Hacking with watchOS", author: "Paul Hudson", image: "hacking_with_watchos", status: .wantToRead, description: """
If you already read Hacking with Swift, Hacking with macOS, or Pro Swift, you'll already know exactly how Hacking with watchOS is structured: I've designed a collection of app projects that teach all the core system frameworks, including SwiftUI, then ordered them so you start to learn with easy projects and work your way up over time.
Hacking with watchOS teaches you SwiftUI through real-world projects. There's a comprehensive Swift introduction for beginners, but I'm also packing the book with hints and tips that help you transfer your existing iOS skills to watchOS painlessly.

Hacking with watchOS includes 12 projects in total: four apps, four games, and four technique projects that focus on specific watchOS APIs. The projects are:

NoteDictate: Get started coding in Swift by making a notes app driven entiely by your user's voice.
Rock, Paper, Scissors: Learn how to use timers, images, groups, and more with this brain-teasing game.
Storing Data: Persist your apps data using UserDefaults, files, and the secure keychain.
WatchFX: Build a currency converter using live internet data, plus sliders, pickers, and a page-based user interface.
Hue Knows: Discover how alerts, menus, and notifications can help you build richer watchOS apps and games.
Views and Modifiers: Learn how SwiftUI transforms our code into real layouts, and how you can create your own custom modifiers.
Magic 8-Ball: Build your own watch face complication that can predict the future. (Possibly)
Safe Crack: Combine the digital crown with haptic feedback and Grand Central Dispatch to create a fun puzzle.
Animation: Learn how to make your user interfaces come to life with attribute and image animations.
iMove: Design your own custom workout app using HealthKit and track calories, distance, and more.
ColorSpin: Add SpriteKit to your apps and build high-performance 2D games – it's easier than you think!
WatchConnectivity: Transfer data, settings, files, and complication updates between watchOS and iOS.
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "2021", valueIcon: nil, description: "28 February"),
    BookDetail(attribute: "LENGTH", valueText: "187", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: []),
            Book(name: "Learning Domain-Driven Design", author: "Vlad Khononov", image: "learning_domain_driven_design", status: .wantToRead, description: """
Building software is harder than ever. As a developer, you not only have to chase ever-changing technological trends but also need to understand the business domains behind the software. This practical book provides you with a set of core patterns, principles, and practices for analyzing business domains, understanding business strategy, and, most importantly, aligning software design with its business needs.

Author Vlad Khononov shows you how these practices lead to robust implementation of business logic and help to future-proof software design and architecture. You'll examine the relationship between domain-driven design (DDD) and other methodologies to ensure you make architectural decisions that meet business requirements. You'll also explore the real-life story of implementing DDD in a startup company.

With this book, you'll learn how to:

Analyze a company's business domain to learn how the system you're building fits its competitive strategy
Use DDD's strategic and tactical tools to architect effective software solutions that address business needs
Build a shared understanding of the business domains you encounter
Decompose a system into bounded contexts
Coordinate the work of multiple teams
Gradually introduce DDD to brownfield projects
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "2021", valueIcon: nil, description: "8 October"),
    BookDetail(attribute: "LENGTH", valueText: "531", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: []),
            Book(name: "Clean Craftsmanship", author: "Robert C. Martin", image: "clean_craftsmanship", status: .wantToRead, description: """
How to Write Code You're Proud of . . . Every Single Day
". . . [A] timely and humble reminder of the ever-increasing complexity of our programmatic world and how we owe it to the legacy of humankind--and to ourselves--to practice ethical development. Take your time reading Clean Craftsmanship. . . . Keep this book on your go-to bookshelf. Let this book be your old friend--your Uncle Bob, your guide--as you make your way through this world with curiosity and courage."
--From the Foreword by Stacia Heimgartner Viscardi, CST & Agile Mentor
In Clean Craftsmanship, the legendary Robert C. Martin ("Uncle Bob") has written the principles that define the profession--and the craft--of software development. Uncle Bob brings together the disciplines, standards, and ethics you need to deliver robust, effective code and to be proud of all the software you write.

Robert Martin, the best-selling author of Clean Code, provides a pragmatic, technical, and prescriptive guide to the foundational disciplines of software craftsmanship. He discusses standards, showing how the world's expectations of developers often differ from their own and helping you bring the two in sync. Bob concludes with the ethics of the programming profession, describing the fundamental promises all developers should make to their colleagues, their users, and, above all, themselves.

With Uncle Bob's insights, all programmers and their managers can consistently deliver code that builds trust instead of undermining it--trust among users and throughout societies that depend on software for their survival.
Moving towards the "north star" of true software craftsmanship: the state of knowing how to program well
Practical, specific guidance for applying five core disciplines: test-driven development, refactoring, simple design,
collaborative programming, and acceptance tests
How developers and teams can promote productivity, quality, and courage
The true meaning of integrity and teamwork among programmers, and ten specific commitments every software professional should make
Register your book for convenient access to the book's companion videos, updates, and/or corrections as they become available. See inside book for details.
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "2021", valueIcon: nil, description: "16 September"),
    BookDetail(attribute: "LENGTH", valueText: "416", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: []),
            Book(name: "Code That Fits in Your Head", author: "Mark Seemann", image: "code_that_fits_in_your_head", status: .wantToRead, description: """
How to Reduce Code Complexity and Develop Software More Sustainably
"Mark Seemann is well known for explaining complex concepts clearly and thoroughly. In this book he condenses his wide-ranging software development experience into a set of practical, pragmatic techniques for writing sustainable and human-friendly code. This book will be a must-read for every programmer."
-- Scott Wlaschin, author of Domain Modeling Made Functional Code That Fits in Your Head offers indispensable, practical advice for writing code at a sustainable pace and controlling the complexity that causes projects to spin out of control.
Reflecting decades of experience helping software teams succeed, Mark Seemann guides you from zero (no code) to deployed features and shows how to maintain a good cruising speed as you add functionality, address cross-cutting concerns, troubleshoot, and optimize. You'll find valuable ideas, practices, and processes for key issues ranging from checklists to teamwork, encapsulation to decomposition, API design to unit testing.

Seemann illuminates his insights with code examples drawn from a complete sample project. Written in C#, they're designed to be clear and useful to anyone who uses any object-oriented language including Java, C++, and Python. To facilitate deeper exploration, all code and extensive commit messages are available for download.

Choose mindsets and processes that work, and escape bad metaphors that don't
Use checklists to liberate yourself, improving outcomes with the skills you already have
Get past "analysis paralysis" by creating and deploying a vertical slice of your application
Counteract forces that lead to code rot and unnecessary complexity
Master better techniques for changing code behavior
Discover ways to solve code problems more quickly and effectively
Think more productively about performance and security
If you've ever suffered through bad projects or had to cope with unmaintainable legacy code, this guide will help you make things better next time and every time.
Register your book for convenient access to downloads, updates, and/or corrections as they become available. See inside book for details.
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Programming"),
    BookDetail(attribute: "RELEASED", valueText: "2021", valueIcon: nil, description: "15 November"),
    BookDetail(attribute: "LENGTH", valueText: "416", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: []),
            Book(name: "Difficult Conversations", author: "Bruce Patton, Douglas Stone, and others", image: "difficult_conversations", status: .wantToRead, description: """
The 10th-anniversary edition of the New York Times business bestseller-now updated with "Answers to Ten Questions People Ask"
We attempt or avoid difficult conversations every day-whether dealing with an underperforming employee, disagreeing with a spouse, or negotiating with a client. From the Harvard Negotiation Project, the organization that brought you Getting to Yes, Difficult Conversations provides a step-by-step approach to having those tough conversations with less stress and more success. you'll learn how to:

· Decipher the underlying structure of every difficult conversation
· Start a conversation without defensiveness
· Listen for the meaning of what is not said
· Stay balanced in the face of attacks and accusations
· Move from emotion to productive problem solving
""", details: [
    BookDetail(attribute: "GENRE", valueText: nil, valueIcon: "star.fill", description: "Leadership"),
    BookDetail(attribute: "RELEASED", valueText: "2010", valueIcon: nil, description: "2 November"),
    BookDetail(attribute: "LENGTH", valueText: "350", valueIcon: nil, description: "Pages"),
    BookDetail(attribute: "LANGUAGE", valueText: nil, valueIcon: "globe.americas.fill", description: "English"),
], highlights: []),
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
