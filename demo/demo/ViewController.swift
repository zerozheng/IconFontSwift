//
//  ViewController.swift
//  IconFontSwift
//
//  Created by zero on 17/2/14.
//  Copyright © 2017年 zero. All rights reserved.
//

import UIKit
import IconFontSwift

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var midLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var bottomImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.midLabel.font = UIFont(name: "iconfont", size: 30)
        self.midLabel.text = "\u{e6a6}"
        
        guard let myfont = IconFont.init() else {
            return
        }
        self.topLabel.font = UIFont(name: myfont.fontName, size: 50)
        self.topLabel.textColor = UIColor.purple
        self.topLabel.text = "\(myfont.icons["time"] ?? "") 测试test"
        
        
        self.imageView.image = UIImage.`if`.image(withText: myfont.icons["phone"], fontName: myfont.fontName, fontSize: 200, imageSize: 200, color: UIColor.green, backGroundColor: UIColor.purple)
        
        
        self.bottomImageView.`if`.asyncImage(withText: myfont.icons["delete_fill"], fontName: myfont.fontName, fontSize: 100, imageSize: 100, color: UIColor.green, backGroundColor: UIColor.purple)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

