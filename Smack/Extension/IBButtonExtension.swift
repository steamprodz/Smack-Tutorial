//
//  IBButtonExtension.swift
//  Smack
//
//  Created by Andrii Diachenko on 3/6/19.
//  Copyright © 2019 Andrii Diachenko. All rights reserved.
//

import Foundation

@IBDesignable extension UIButton {

    @IBInspectable
    var borderColor: UIColor? {
        get {
            guard let color = self.layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }

    @IBInspectable
    var borderRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
