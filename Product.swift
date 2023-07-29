//
//  Product.swift
//  Shopping
//
//  Created by Adarsh Begur on 29/07/23.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}

var ProductList = [Product(name: "Xiomi", image: "Mobile-1", price: 27899),
                   Product(name: "iPhone X", image: "mobile-2", price: 37899),
                   Product(name: "iPhone 11", image: "mobile-3", price: 48999),
                   Product(name: "iPhone 11 Pro", image: "mobile-4", price: 54599),
                   Product(name: "Samsung S21+", image: "mobile-5", price: 57299),
                   Product(name: "Samsung Note 20 Ultra", image: "mobile-6", price: 77899),
                   Product(name: "Samsung Z Fold 4", image: "mobile-7", price: 127899),
                   Product(name: "Samsung S23 Ultra", image: "mobile-8", price: 87899)]
