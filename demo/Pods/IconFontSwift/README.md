#描述

一个简单易用的 iconfont 字体库，swift3 版本。从此不用设计师切图（切图还是要的，只是少了适配的问题，1x、2x、3x ...），同时app也瘦身了。

![License](https://img.shields.io/cocoapods/l/ImagePicker.svg?style=flat)
![Platform](https://img.shields.io/cocoapods/p/ImagePicker.svg?style=flat)
![Swift](https://img.shields.io/badge/%20in-swift%203.0-orange.svg)

#使用

本框架内建了一个小字体，总共八十个图标，如果想要查看里面的字体（图标），可以在`**浏览器**`中打开demo工程`fontHtmlSource`文件夹里面的三个`html`文件查看，不仅可以找到`unicode`, 而且还可以找到`字体标识`。如图：

<img src="https://github.com/zerozheng/IconFontSwift/blob/master/IconFontSwift/IconFontSwift/demo01.jpeg" alt="IconFontSwift"/ width = 250>
<img src="https://github.com/zerozheng/IconFontSwift/blob/master/IconFontSwift/IconFontSwift/demo02.png" alt="IconFontSwift"/ width = 250>
<img src="https://github.com/zerozheng/IconFontSwift/blob/master/IconFontSwift/IconFontSwift/demo03.png" alt="IconFontSwift"/ width = 250>


使用的时候可以使用内建字体库，也可以使用自定义的字体库。

1. 使用默认内建字体库
	
	先创建字体对象`IconFont`实例
	
	```
	guard let myfont = IconFont.init() else {
		  return
	}
	```
	
	* **UILabel**: 设置label的字体、颜色。再设置label的文字为对应图标的unicode就可以了。实例代码如下：
	
	```
	self.topLabel.font = UIFont(name: myfont.fontName, size: 50)
	self.topLabel.textColor = UIColor.purple
	self.topLabel.text = "myfont.icons["time"]"
	```
	
	* **UIImageView**: 设置imageview的image。可以同步设置，也可以异步设置。实例代码如下：
	
	
	```
	self.imageView.image = UIImage.zz.image(withText: myfont.icons["phone"], fontName: myfont.fontName, fontSize: 200, imageSize: 200, color: UIColor.green, backGroundColor: UIColor.purple)
	        
	//异步
	self.bottomImageView.zz.asyncImage(withText: myfont.icons["delete_fill"], fontName: myfont.fontName, fontSize: 100, imageSize: 100, color: UIColor.green, backGroundColor: UIColor.purple)
	```
	

2. 自定义字体库
	
	先定义一个`IconFont`的子类，然后填上自定义字体库的信息，比如：
	
	```
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
	```
	
	然后创建自定义的字体对象`MyFont`实例
	
	```
	guard let myfont = MyFont.init() else {
		  return
	}
	```
	
	* **UILabel**: 设置label的字体、颜色。再设置label的文字为对应图标的unicode就可以了。实例代码如下：
	
	```
	self.topLabel.font = UIFont(name: myfont.fontName, size: 50)
	self.topLabel.textColor = UIColor.purple
	self.topLabel.text = "myfont.icons["time"]"
	```
	
	* **UIImageView**: 设置imageview的image。可以同步设置，也可以异步设置。实例代码如下：
	
	```
	self.imageView.image = UIImage.zz.image(withText: myfont.icons["phone"], fontName: myfont.fontName, fontSize: 200, imageSize: 200, color: UIColor.green, backGroundColor: UIColor.purple)
	        
	//异步
	self.bottomImageView.zz.asyncImage(withText: myfont.icons["delete_fill"], fontName: myfont.fontName, fontSize: 100, imageSize: 100, color: UIColor.green, backGroundColor: UIColor.purple)
	```


## 集成
```
pod 'IconFontSwift',    '~> 0.0.1'
```


