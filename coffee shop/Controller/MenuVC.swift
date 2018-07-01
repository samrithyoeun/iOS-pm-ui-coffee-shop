//
//  CategoryVC.swift
//  coffee shop
//
//  Created by PM Academy 3 on 6/29/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class MenuVC: UICollectionViewController {

    let categoryList = Config.initData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Category = categoryList[indexPath.row]
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "menu cell", for: indexPath) as! MenuCell
        item.loadToCell(with: Category)
        return item
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailVC, let cell = sender as? UICollectionViewCell {
            if let indexPath = collectionView!.indexPath(for: cell){
                detailVC.category = categoryList[indexPath.row]
            }
        }
    }
    
    
}

extension MenuVC : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CGFloat((view.frame.size.width)/2-15)
        let textHeight = CGFloat(10)
        let topButtomMarginOfText =  CGFloat (14.5)
        return CGSize(width: width, height: width * 0.9 + textHeight + topButtomMarginOfText)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
    
    
    
}

