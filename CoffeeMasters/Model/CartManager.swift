//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Petr Chalupa on 01.09.2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = [];
}
