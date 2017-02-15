//
//  IconFont.swift
//  IconFontSwift
//
//  Created by zero on 17/2/15.
//  Copyright © 2017年 zero. All rights reserved.
//

import Foundation
import UIKit

open class IconFont: IconFontCompatible {
    
    open var fontName: String {
        return "iconfontswift"
    }
    
    open var filePath: String {
        let bundle = Bundle(identifier: "org.cocoapods.IconFontSwift")
        return bundle?.path(forResource: fileName, ofType: extensionName) ?? ""
    }
    
    open var fileName: String {
        return "IFSiconfont"
    }
    
    open var extensionName: String {
        return "ttf"
    }
    
    
    
    open var icons: [String : String] {
        return [
            "edit" : "\u{0000e649}",
            "location" : "\u{0000e650}",
            "phone" : "\u{0000e652}",
            "search" : "\u{0000e65c}",
            "time" : "\u{0000e65f}",
            "warn" : "\u{0000e663}",
            "comment" : "\u{0000e667}",
            "like_fill" : "\u{0000e668}",
            "like" : "\u{0000e669}",
            "evaluate" : "\u{0000e672}",
            "delete_fill" : "\u{0000e6a6}",
            "delete" : "\u{0000e6b4}",
            "vip" : "\u{0000e6c3}",
            "friend_follow" : "\u{0000e6c9}",
            "friend_unfollow" : "\u{0000e6ca}",
            "friend" : "\u{0000e6cc}",
            "forward" : "\u{0000e6ea}",
            "recharge" : "\u{0000e6ed}",
            "friend_favor" : "\u{0000e6f1}",
            "community" : "\u{0000e747}",
            "hot_big" : "\u{0000e757}",
            "hot_small" : "\u{0000e75a}",
            "round_selected" : "\u{0000e71f}",
            "box_unselected" : "\u{0000e720}",
            "box_selected" : "\u{0000e721}",
            "closed" : "\u{0000e723}",
            "round_closed" : "\u{0000e724}",
            "add" : "\u{0000e727}",
            "minus" : "\u{0000e729}",
            "question" : "\u{0000e72d}",
            "checked" : "\u{0000e72e}",
            "round_unselected" : "\u{0000e72f}",
            "round_checked" : "\u{0000e730}",
            "star" : "\u{0000e732}",
            "unstar" : "\u{0000e733}",
            "undo" : "\u{0000e734}",
            "order" : "\u{0000e737}",
            "share" : "\u{0000e739}",
            "more" : "\u{0000e73a}",
            "gouwuche_fill" : "\u{0000e73c}",
            "gouwuche" : "\u{0000e73d}",
            "waterflow" : "\u{0000e73f}",
            "kefu" : "\u{0000e741}",
            "list" : "\u{0000e742}",
            "quan" : "\u{0000e748}",
            "saoma" : "\u{0000e749}",
            "shezhi" : "\u{0000e74c}",
            "shenfen" : "\u{0000e74d}",
            "tongzhi" : "\u{0000e759}",
            "xinxi" : "\u{0000e763}",
            "youhuiquan" : "\u{0000e764}",
            "sort" : "\u{0000e766}",
            "zuji" : "\u{0000e767}",
            "top" : "\u{0000e76c}",
            "up" : "\u{0000e76d}",
            "down" : "\u{0000e771}",
            "right" : "\u{0000e775}",
            "left" : "\u{0000e779}",
            "round_arrow_down" : "\u{0000e77a}",
            "load" : "\u{0000e781}",
            "refresh" : "\u{0000e782}",
            "xinyongqia" : "\u{0000e785}",
            "sale" : "\u{0000e78b}",
            "menu" : "\u{0000e78e}",
            "help" : "\u{0000e78f}",
            "nice_fill" : "\u{0000e793}",
            "nice" : "\u{0000e794}",
            "payment" : "\u{0000e7ac}",
            "huwai" : "\u{0000e7b0}",
            "jujia" : "\u{0000e7b1}",
            "kuzi  " : "\u{0000e7b2}",
            "muying" : "\u{0000e7b4}",
            "nanzhuang" : "\u{0000e7b5}",
            "neiyi" : "\u{0000e7b6}",
            "nvzhuang" : "\u{0000e7b7}",
            "pinpai" : "\u{0000e7b8}",
            "xiangbao" : "\u{0000e7ba}",
            "yishouchu" : "\u{0000e7bb}",
            "friend_follow_list" : "\u{0000e7be}",
            "video" : "\u{0000e7c8}"
        ]
    }
    
    public required init?(){
        
        if UIFont.fontNames(forFamilyName: fontName).count == 0 {
            guard registerFont(with: filePath) else {
                return nil
            }
        }
    }
    
}
