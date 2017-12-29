//
//  UIImageExtension.swift
//  IconFontSwift
//
//  Created by zero on 17/2/15.
//  Copyright © 2017年 zero. All rights reserved.
//

import Foundation
import UIKit

public extension IFExtension where Element: UIImage {
    
    public static func image(withText text: String?, fontName: String, fontSize: CGFloat, imageSize: CGFloat, color: UIColor = UIColor.black, backGroundColor: UIColor? = nil, offset: CGPoint = CGPoint.zero) -> UIImage? {
        
        guard fontSize > 0, imageSize > 0, let _ = text, let font = UIFont(name: fontName, size: fontSize) else {
            return nil
        }
        
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        
        let attributes = [
            NSAttributedStringKey.foregroundColor: color,
            NSAttributedStringKey.paragraphStyle: paragraph,
            NSAttributedStringKey.font: font
        ]
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: imageSize, height: imageSize), false, 0)
        
        if let _ = backGroundColor {
            backGroundColor!.setFill()
            let imageRect: CGRect = CGRect(x: 0, y: 0, width: imageSize, height: imageSize)
            UIRectFill(imageRect)
        }
        
        let rect = (text! as NSString).boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude), options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        
        (text! as NSString).draw(in: CGRect(x: offset.x, y: offset.y+(imageSize-rect.height)*0.5, width: rect.width, height: rect.height), withAttributes: attributes)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        return image
    }
    
}
