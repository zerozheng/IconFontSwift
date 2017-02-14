//
//  ViewController.swift
//  IconFontSwift
//
//  Created by zero on 17/2/14.
//  Copyright © 2017年 zero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var midLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let myfont = MyFont.init() else {
            return
        }
        self.topLabel.font = UIFont(name: myfont.fontName, size: 18)
        self.topLabel.textColor = UIColor.purple
        self.topLabel.text = myfont.icons["cart"]
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

