//
//  Extension.swift
//  coffee shop
//
//  Created by PM Academy 3 on 6/29/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func decorate (holderTextColor: UIColor = UIColor.init(red: 18, green: 38, blue: 182, alpha: 1),
                   borderColor: CGColor = UIColor.init(red: 18, green: 38, blue: 182, alpha: 1).cgColor,
                   paddingLeft: CGRect = CGRect(x: 0, y: 0, width: 10, height: 10) ){
        
        if let placeholder = self.placeholder {
            self.attributedPlaceholder = NSAttributedString(string:placeholder, attributes: [NSAttributedStringKey.foregroundColor: holderTextColor])
        }
        layer.borderColor = borderColor
        layer.borderWidth = 1
        let paddingView = UIView(frame: paddingLeft)
        leftView = paddingView
    }
}
