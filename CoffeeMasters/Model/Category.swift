//
//  Category.swift
//  CoffeeMasters
//
//  Created by Petr Chalupa on 01.09.2023.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String { name }
    var name: String
    var products: [Product] = []
}
