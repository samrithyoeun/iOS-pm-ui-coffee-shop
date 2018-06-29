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
    func decorate (holderTextColor: UIColor = UIColor.init(red: 18/255.0, green: 138/255.0, blue: 82/255.0, alpha: 1.0),
                   borderColor: CGColor = UIColor.init(red: 18/255.0, green: 138/255.0, blue: 82/255.0, alpha: 1.0).cgColor,
                   paddingLeft: CGRect = CGRect(x: 0, y: 0, width: 10, height: 10) ){
        attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: holderTextColor])
        layer.borderColor = borderColor
        layer.borderWidth = 1
        
        let paddingView = UIView(frame: paddingLeft)
        leftViewMode = UITextFieldViewMode.always
        leftView = paddingView
    }
}
