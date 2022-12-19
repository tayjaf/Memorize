//
//  ContentView.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-16.
//

import SwiftUI

struct ContentView: View {
    var emojis: Array<String> = ["✈️", "🚀", "🚗", "🚊", "🏎", "🚌", "🚍", "🚐", "🚑", "🚒", "🚓", "🚕", "🚚", "🛻", "🛴", "🦼", "🛺", "🚜"]
    @State var emojiCount = 4
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }.padding(.horizontal).font(.largeTitle)
        }.padding(.horizontal).foregroundColor(.red)
    }
    
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack() {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3).foregroundColor(.red)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
