//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Petr Chalupa on 31.08.2023.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager();
    var cartManager = CartManager();
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
