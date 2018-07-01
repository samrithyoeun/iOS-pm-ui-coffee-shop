//
//  DetailVC.swift
//  coffee shop
//
//  Created by PM Academy 3 on 6/29/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var specialOfferLabel: UILabel!
    @IBOutlet weak var previousPriceLabel: UILabel!
    @IBOutlet weak var newPriceLabel: UILabel!
    
    var category = Category(image: "", name: "", description: "", productList: [Product]() )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.isHidden = true
        setUpTopUI()
        
    }
  
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.navigationController?.navigationBar.isHidden = false
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func setUpTopUI(){
        categoryLabel.text = category.name
        descriptionLabel.text = category.description
        categoryImageView.image = UIImage(named: category.image)
        
    }
}

extension DetailVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
}

extension DetailVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.productList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = category.productList[indexPath.row]
        print(product)
        let cell = tableView.dequeueReusableCell(withIdentifier: "product cell", for: indexPath) as! ProductCell
        cell.load(with: product)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
