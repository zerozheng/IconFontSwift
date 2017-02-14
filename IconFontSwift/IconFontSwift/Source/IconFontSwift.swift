//
//  IconFontSwift.swift
//  IconFontSwift
//
//  Created by zero on 17/2/14.
//  Copyright © 2017年 zero. All rights reserved.
//

import Foundation
import UIKit


protocol IconFontCompatible {
    
    //字体名字 跟 文件名字 是不一样的
    var fontName: String {get}
    
    var filePath: String {get}
    var fileName: String {get}
    var extensionName: String {get}
    
    var icons: [String:String] {get}
}


open class IconFont: IconFontCompatible {
    
    open var fontName: String {
        return ""
    }
    
    open var filePath: String {
        return ""
    }
    
    open var fileName: String {
        return ""
    }
    
    open var extensionName: String {
        return ""
    }
    
    open var icons: [String : String] {
        return [:]
    }
    
    public required init?(){
        
        if UIFont.fontNames(forFamilyName: fontName).count == 0 {
            guard registerFont(with: filePath) else {
                return nil
            }
        }
    }
    
    public static var `default`: IconFont? {
        return IconFont.init()
    }

}

public func registerFont(with filePath:String) -> Bool {
    guard let provider = CGDataProvider(filename: filePath) else {
        return false
    }
    
    let font = CGFont(provider)
    let result = CTFontManagerRegisterGraphicsFont(font, nil)
    return result
}
