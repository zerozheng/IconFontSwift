//
//  IconFontSwift.swift
//  IconFontSwift
//
//  Created by zero on 17/2/14.
//  Copyright © 2017年 zero. All rights reserved.
//

import Foundation
import UIKit


public protocol IconFontCompatible {
    
    //字体名字 跟 文件名字 是不一样的
    var fontName: String {get}
    
    var filePath: String {get}
    var fileName: String {get}
    var extensionName: String {get}
    
    var icons: [String:String] {get}
}


public func registerFont(with filePath:String) -> Bool {
    guard let provider = CGDataProvider(filename: filePath) else {
        return false
    }
    
    let font = CGFont(provider)!
    let result = CTFontManagerRegisterGraphicsFont(font, nil)
    return result
}


public struct IFExtension<Element> {
    let base: Element
    
    init(base: Element) {
        self.base = base
    }
}

public protocol IFExtensible {
    associatedtype T
    var `if`: IFExtension<T>{get}
    static var `if`: IFExtension<T>.Type {get}
}

extension IFExtensible {
    public var `if`: IFExtension<Self> {
        get{
            return IFExtension(base: self)
        }
    }
    
    public static var `if`: IFExtension<Self>.Type {
        get{
            return IFExtension<Self>.self
        }
    }
}

extension UIImage: IFExtensible {}
extension UIImageView: IFExtensible {}
