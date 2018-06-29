//
//  Menu.swift
//  coffee shop
//
//  Created by PM Academy 3 on 6/29/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation

struct Product{
    var name: String
    var description: String
    var price: Float
    var liked: Int
}

struct Category {
    var image: String
    var name: String
    var description: String
    var productList: [Product]
    
    static func initData() -> [Category]{
        let coffee = Category(image: "coffee", name: "Coffee", description: "Freshly Brewed",
                              productList: [Product(name: "latte", description: "Yummy wef", price: 2.5, liked: 1000),
                                            Product(name: "latte", description: "Yummy 3r", price: 3.5, liked: 1050),
                                            Product(name: "latte", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                            Product(name: "latte", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let coffee = Category(image: "breakfast", name: "breakfast", description: "Morning Meal",
                              productList: [Product(name: "latte", description: "Yummy wef", price: 2.5, liked: 1000),
                                            Product(name: "latte", description: "Yummy 3r", price: 3.5, liked: 1050),
                                            Product(name: "latte", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                            Product(name: "latte", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let coffee = Category(image: "lunch", name: "breakfast", description: "Morning Meal",
                              productList: [Product(name: "latte", description: "Yummy wef", price: 2.5, liked: 1000),
                                            Product(name: "latte", description: "Yummy 3r", price: 3.5, liked: 1050),
                                            Product(name: "latte", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                            Product(name: "latte", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let coffee = Category(image: "rice", name: "breakfast", description: "Morning Meal",
                              productList: [Product(name: "latte", description: "Yummy wef", price: 2.5, liked: 1000),
                                            Product(name: "latte", description: "Yummy 3r", price: 3.5, liked: 1050),
                                            Product(name: "latte", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                            Product(name: "latte", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let coffee = Category(image: "breakfast", name: "breakfast", description: "Morning Meal",
                              productList: [Product(name: "latte", description: "Yummy wef", price: 2.5, liked: 1000),
                                            Product(name: "latte", description: "Yummy 3r", price: 3.5, liked: 1050),
                                            Product(name: "latte", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                            Product(name: "latte", description: "Yummy sf", price: 4.5, liked: 1020),])
    }
    
}

