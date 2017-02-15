Pod::Spec.new do |s|

  s.name         = "IconFontSwift"
  s.version      = "0.0.1"
  s.summary      = "a simple framework for IconFont"
  s.description  = <<-DESC
a simple framework for IconFont, which include a build-in font.
                   DESC

  s.homepage     = "https://github.com/zerozheng/IconFontSwift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "zero"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/zerozheng/IconFontSwift.git", :tag => s.version }
  s.source_files  = "Source"

end