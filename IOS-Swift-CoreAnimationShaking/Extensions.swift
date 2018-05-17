//
//  Extensions.swift
//  IOS-Swift-CoreAnimationShaking
//
//  Created by Pooya Hatami on 2018-05-16.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit

public extension  UITextField {

    func shake(horizantaly:CGFloat = 0  , Veticaly:CGFloat = 0) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - horizantaly, y: self.center.y - Veticaly ))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + horizantaly, y: self.center.y + Veticaly ))
        
        
        self.layer.add(animation, forKey: "position")
        
    }

    
    func customizeTextFieldG1(textFieldName:UITextField) {
        // change UIbutton propertie
        let c1GreenColor = (UIColor(red: -0.108958, green: 0.714926, blue: 0.758113, alpha: 1.0))
        let c2GreenColor = (UIColor(red: 0.108958, green: 0.714926, blue: 0.758113, alpha: 1.0))
        textFieldName.backgroundColor = UIColor.yellow
        textFieldName.layer.cornerRadius = 7
        textFieldName.layer.borderWidth = 0.8
        textFieldName.layer.borderColor = c1GreenColor.cgColor
        
        textFieldName.layer.shadowColor = c2GreenColor.cgColor
        textFieldName.layer.shadowOpacity = 0.8
        textFieldName.layer.shadowRadius = 12
        textFieldName.layer.shadowOffset = CGSize(width: 1, height: 1)
        
    }
    
    func uncustomizeTextFieldG1(textFieldName:UITextField) {
        // change UIbutton propertie
        textFieldName.backgroundColor = UIColor.gray
        textFieldName.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    
    func customizeTextField() {
        // change UIbutton propertie
        let c1GreenColor = (UIColor(red: -0.108958, green: 0.714926, blue: 0.758113, alpha: 1.0))
        let c2GreenColor = (UIColor(red: 0.108958, green: 0.714926, blue: 0.758113, alpha: 1.0))
        self.backgroundColor = UIColor.yellow
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.8
        self.layer.borderColor = c1GreenColor.cgColor
        
        self.layer.shadowColor = c2GreenColor.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 12
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
    }
    
    func uncustomizeTextField() {
        // change UIbutton propertie
        self.backgroundColor = UIColor.gray
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    
}
