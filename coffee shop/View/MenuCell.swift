//
//  MenuCell.swift
//  coffee shop
//
//  Created by PM Academy 3 on 6/29/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuMainLabel: UILabel!
    @IBOutlet weak var menuSubLabel: UILabel!
    @IBOutlet weak var menuImageViewHeightConstrain: NSLayoutConstraint!
    
    func loadToCell(with category: Category){
        menuImageView.image = UIImage(named: category.image)
        menuMainLabel.text? = category.name
        menuSubLabel.text? = category.description
        
        menuImageViewHeightConstrain.constant = menuImageView.frame.width * 0.9
    }
}
