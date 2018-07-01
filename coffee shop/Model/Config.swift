//
//  Config.swift
//  coffee shop
//
//  Created by Samrith Yoeun on 6/30/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation
class Config {
    static func initData() -> [Category]{
        let coffee = Category(image: "coffee1", name: "Coffee", description: "Freshly Brewed",
                              productList: [Product(image: "coffee1", name: "some coffee", description: "Yummy coffee", price: 2.5, liked: 1000),
                                            Product(image: "coffee2", name: "some other coffee", description: "Yummy coffee", price: 3.5, liked: 1050),
                                            Product(image: "coffee3", name: "other coffee", description: "it taste good", price: 5.5, liked: 1400)])
        
        let breakfast = Category(image: "breakfast1", name: "breakfast", description: "Morning Meal",
                                 productList: [Product(image: "breakfast1", name: "something delicious", description: "Yummy wef", price: 2.5, liked: 1000),
                                               Product(image: "breakfast2", name: "something delicious", description: "Yummy 3r", price: 3.5, liked: 1050),
                                               Product(image: "breakfast3", name: "something delicious", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                               Product(image: "breakfast4", name: "something delicious", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let lunch = Category(image: "lunch1", name: "breakfast", description: "Morning Meal",
                             productList: [Product(image: "dinner4", name: "something delicious", description: "Yummy wef", price: 2.5, liked: 1000),
                                           Product(image: "lunch1", name: "something delicious", description: "Yummy 3r", price: 3.5, liked: 1050),
                                           Product(image: "lunch2", name: "something delicious", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                           Product(image: "lunch3", name: "something delicious", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let dinner = Category(image: "dinner1", name: "dinner", description: "we eat at night",
                            productList: [Product(image: "dinner1", name: "something delicious", description: "Yummy wef", price: 2.5, liked: 1000),
                                          Product(image: "dinner2", name: "something delicious", description: "Yummy 3r", price: 3.5, liked: 1050),
                                          Product(image: "dinner3", name: "something delicious", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                          Product(image: "dinner4", name: "something delicious", description: "Yummy sf", price: 4.5, liked: 1020),])
        
        let fruitshake = Category(image: "fruit1", name: "fruitshake", description: "fruit smothie",
                             productList: [Product(image: "fruit1", name: "something delicious", description: "Yummy wef", price: 2.5, liked: 1000),
                                           Product(image: "fruit2", name: "something delicious", description: "Yummy 3r", price: 3.5, liked: 1050),
                                           Product(image: "fruit3", name: "something delicious", description: "Yummy fsafs", price: 5.5, liked: 1400),
                                           Product(image: "fruit4", name: "something delicious", description: "Yummy sf", price: 4.5, liked: 1020),])
        let cake = Category(image: "cake1", name: "Cake", description: "Freshly Brewed",
                              productList: [Product(image: "cake1", name: "some coffee", description: "Yummy coffee", price: 2.5, liked: 1000),
                                            Product(image: "cake2", name: "some other coffee", description: "Yummy coffee", price: 3.5, liked: 1050),
                                            Product(image: "cake3", name: "other coffee", description: "it taste good", price: 5.5, liked: 1400)])
        return [coffee, breakfast, lunch, dinner, fruitshake,cake]
    }
    
}
