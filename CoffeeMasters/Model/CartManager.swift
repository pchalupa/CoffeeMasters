//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Petr Chalupa on 01.09.2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = [];
    
    func add(product: Product, quantity: Int) {
        self.cart.append((product, quantity));
    }
    
    func remove(product: Product) {
        self.cart.removeAll { itemsInCart in
            return itemsInCart.0.id == product.id;
        }
    }
    
    func total() -> Double {
        cart.reduce(0.0) {
            $0 + $1.0.price * Double($1.1)
        }
    }
}
