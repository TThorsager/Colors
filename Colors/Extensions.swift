//
//  Extensions.swift
//  Colors
//
//  Created by Thomas Thorsager on 26/10/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//

import UIKit

extension UIButton {
    func applyButtonDesign() {
        self.layer.cornerRadius = 30
        
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 0
        
    }
}
