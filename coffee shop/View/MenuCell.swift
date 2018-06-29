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
    
    func loadToCell(with menu: Menu){
        print(menu)
//        
//        menuImageView.image = UIImage(named: menu.image)
//        
//        menuMainLabel.text = menu.name
//        menuSubLabel.text = menu.description
        menuMainLabel.text? = menu.name
        
    }
}
