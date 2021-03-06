//
//  ContentView.swift
//  PokedexTutorial
//
//  Created by LrUCiA.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear{
                PokeApi().getData() { pokemon in
                    print(pokemon)
                    
                    for pokemon in pokemon {
                        print(pokemon.name)
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
