//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-16.
//

import SwiftUI

@main

struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
