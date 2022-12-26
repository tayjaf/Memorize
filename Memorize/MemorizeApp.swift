//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-16.
//

import SwiftUI

@main

struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
