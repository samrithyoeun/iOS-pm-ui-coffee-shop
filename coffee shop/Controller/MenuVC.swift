//
//  CategoryVC.swift
//  coffee shop
//
//  Created by PM Academy 3 on 6/29/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class CategoryVC: UICollectionViewController {

    let productList = [ Category(image: "coffee", name: "Coffee", description: "Freshly brewed Coffee"),
                     Category(image: "latte", name: "Breakfast", description: "hearty, hot  & flavour"),
                     Category(image: "lunch", name: "Coffee", description: "Freshly brewed Coffee"),
                     Category(image: "rice", name: "Breakfast", description: "hearty, hot  & flavour")
                    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Category = CategoryList[indexPath.row]
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "Category cell", for: indexPath) as! CategoryCell
        item.loadToCell(with: Category)
        return item
    }
}

extension CategoryVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CGFloat((view.frame.size.width-60)/2)
        return CGSize(width: width, height: width+60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 20, 20, 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
    
}

