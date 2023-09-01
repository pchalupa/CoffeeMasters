//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Petr Chalupa on 31.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Greeting()
            Offer(title: "foo", description: "Bar")
        }
        .padding()
    }
}

struct Greeting: View {
    @State var name = "";
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Enter your name", text: $name)
            Text("Hello, \(name)!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
