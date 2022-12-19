//
//  ContentView.swift
//  Memorize
//
//  Created by Tayyab Jafar on 2022-12-16.
//

import SwiftUI

struct ContentView: View {
    var emojis: Array<String> = ["✈️", "🚀", "🚗", "🚊"]
    var body: some View {
        HStack {
            CardView(content: emojis[0])
            CardView(content: emojis[1])
            CardView(content: emojis[2])
            CardView(content: emojis[3])
        } .padding(.horizontal).foregroundColor(.red)
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
