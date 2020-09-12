//
//  ChangeColor.swift
//  QuestionApp
//
//  Created by tomoya tanaka on 2020/09/12.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import Foundation
import UIKit

class ChangeColor {
    
    func changeColor(topR: CGFloat, topG: CGFloat,topB: CGFloat, topAlpha: CGFloat,
    bottomR: CGFloat, bottomG: CGFloat,bottomB: CGFloat, bottomAlpha: CGFloat) -> CAGradientLayer {
        
            let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        
            let bottomColor = UIColor(red: bottomR, green: bottomG, blue: bottomB, alpha: bottomAlpha)
        
            // グラデーションの色を配列で管理する
        
        let gradientColor = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
    
}
