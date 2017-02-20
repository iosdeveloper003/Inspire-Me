//
//  QuotesBank.swift
//  InspireMe
//
//  Created by San MBP on 2/18/17.
//  Copyright © 2017 Sandeep Kumar. All rights reserved.
//

import Foundation

class QuotesManager {
    
    var allQuotes = [Quote]()
    
    var currentIndex = -1
    
    init() {
        populateQuotes()
    }
    
    func populateQuotes() {
        var nextQuote = Quote(text: "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.", author: Author(name: "Steve Jobs", imageName: "thumb_steve"))
        allQuotes.append(nextQuote)
        
        nextQuote = Quote(text: "No matter how small you start, start something that matters.", author: Author(name: "Brendon Burchard", imageName: "thumb_brendon"))
        allQuotes.append(nextQuote)
        
        nextQuote = Quote(text: "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat.", author: Author(name: "Theodore Roosevelt", imageName: "thumb_theodore"))
        allQuotes.append(nextQuote)
    }
    
    func getNextQuote() -> Quote {
        if (currentIndex == allQuotes.count - 1) {
            currentIndex = 0
        } else {
            currentIndex += 1
        }
        return allQuotes[currentIndex]
    }
    
    class Quote {
        var text: String
        var author: Author
        
        init(text: String, author: Author) {
            self.text = text
            self.author = author
        }
    }
    
    class Author {
        var name: String
        var imageName: String
        
        init(name: String, imageName: String) {
            self.name = name
            self.imageName = imageName
        }
    }
    
}
