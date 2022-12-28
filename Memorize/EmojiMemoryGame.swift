//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject  {
    
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["✈️", "🚀", "🚗", "🚊", "🏎", "🚌", "🚍", "🚐", "🚑", "🚒", "🚓", "🚕", "🚚", "🛻", "🛴", "🦼", "🛺", "🚜", "🚁", "🚤", "🛸"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        // objectWillChange.send() (@Published does this)
        model.choose(card)
        
    }
}
