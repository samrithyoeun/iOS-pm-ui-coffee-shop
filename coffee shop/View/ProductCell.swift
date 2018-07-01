//
//  ProductCell.swift
//  coffee shop
//
//  Created by Samrith Yoeun on 6/30/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productLikedLabel: UILabel!
    
    func load(with product: Product){
        productImageView.image = UIImage(named: product.image)
        productNameLabel.text = product.name
        productDescriptionLabel.text = product.description
        productLikedLabel.text = "❤️  \(product.liked)"
    }
}
