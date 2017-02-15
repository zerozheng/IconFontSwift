//
//  MyFont.swift
//  IconFontSwift
//
//  Created by zero on 17/2/14.
//  Copyright © 2017年 zero. All rights reserved.
//

import Foundation

class MyFont: IconFont {
    
    //**注意**：字体名字,它跟字体文件名是不一样的
    override var fontName: String {
        return "iconfont"
    }
    
    //字体文件名
    override var fileName: String {
        return "ZZIconFont"
    }
    
    override var filePath: String {
        return Bundle.main.path(forResource: fileName, ofType: extensionName) ?? ""
    }
    
    override var extensionName: String {
        return "ttf"
    }
    
    
    override var icons: [String : String] {
        return ["cart":"\u{e6af}", "delete_fill":"\u{e6a6}"]
    }
}
