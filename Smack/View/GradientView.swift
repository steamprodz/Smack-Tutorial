//
//  GradientView.swift
//  Smack
//
//  Created by Andrii Diachenko on 3/5/19.
//  Copyright © 2019 Andrii Diachenko. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable
    var firstColor: UIColor = #colorLiteral(red: 0.231372549, green: 0.2274509804, blue: 0.8, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable
    var lastColor: UIColor = #colorLiteral(red: 0.368627451, green: 0.737254902, blue: 0.8078431373, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [firstColor.cgColor, lastColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
