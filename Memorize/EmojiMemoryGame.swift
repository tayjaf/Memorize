//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject  {
    static let emojis = ["✈️", "🚀", "🚗", "🚊", "🏎", "🚌", "🚍", "🚐", "🚑", "🚒", "🚓", "🚕", "🚚", "🛻", "🛴", "🦼", "🛺", "🚜", "🚁", "🚤", "🛸"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
        
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        // objectWillChange.send() (@Published does this)
        model.choose(card)
        
    }
}
