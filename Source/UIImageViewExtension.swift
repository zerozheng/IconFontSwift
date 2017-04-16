//
//  UIImageViewExtension.swift
//  IconFontSwift
//
//  Created by zero on 17/2/15.
//  Copyright © 2017年 zero. All rights reserved.
//

import Foundation
import UIKit

public extension IFExtension where Element: UIImageView {
    public func asyncImage(withText text: String?, fontName: String, fontSize: CGFloat, imageSize: CGFloat, color: UIColor = UIColor.black, backGroundColor: UIColor? = nil, offset: CGPoint = CGPoint.zero) {
        
        let dispatch = DispatchQueue.global()
        dispatch.async {
            let image = UIImage.`if`.image(withText: text, fontName: fontName, fontSize: fontSize, imageSize: imageSize, color: color, backGroundColor: backGroundColor, offset: offset)
            DispatchQueue.main.async {
                self.base.image = image
            }
        }
    }
}
