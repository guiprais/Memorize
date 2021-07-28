//
//  ContentView.swift
//  Memorize
//
//  Created by Guilherme de Prais on 22/07/21.
//

import SwiftUI

struct ContentView: View {
    var emojis: Array<String> = ["🔥", "🚀", "🏈", "🐻‍❄️", "🦊", "🐻", "🐱", "🐶", "🐹", "🐭", "🐰", "🐨", "🐯", "🦁", "🐮", "🐔", "🐧", "🐦", "🦉", "🦇", "🐺", "🐴", "🦅", "🦄"]
    @State var emojiCount: Int = 4
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                remove
                Spacer()
                add
                
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
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
        Button{
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
        ZStack {
            let shape = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape
                    .fill()
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
    }
}
