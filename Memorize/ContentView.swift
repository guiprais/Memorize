//
//  ContentView.swift
//  Memorize
//
//  Created by Guilherme de Prais on 22/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      return ZStack {
              RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .stroke(lineWidth: 3)
              Text("Hello, SwiftUI!")
      }
      .padding(.horizontal)
      .foregroundColor(.red)
      
      

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
