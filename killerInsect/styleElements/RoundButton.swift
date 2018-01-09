//
//  RoundButton.swift
//  killerInsect
//
//  Created by Jorge Martinez on 08/01/18.
//  Copyright © 2018 Jorge Martinez. All rights reserved.
//
import UIKit

@IBDesignable
class RoundButton : UIButton {
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = (cornerRadius > 0)
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var bgColor : UIColor? {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    
    
}

