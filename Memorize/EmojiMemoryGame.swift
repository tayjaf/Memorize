//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-21.
//

import SwiftUI


class EmojiMemoryGame  {
    static let emojis = ["✈️", "🚀", "🚗", "🚊", "🏎", "🚌", "🚍", "🚐", "🚑", "🚒", "🚓", "🚕", "🚚", "🛻", "🛴", "🦼", "🛺", "🚜", "🚁", "🚤", "🛸"]
    
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
