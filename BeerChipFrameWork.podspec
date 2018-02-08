#
#  Be sure to run `pod spec lint BeerChipFrameWork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "BeerChipFrameWork"

  s.version      = "0.0.8"

  s.summary      = "BeerChipFrameWork displays a webView and a AlertMessage"

  s.description  = "BeerChipFrameWork Contains two Buttons. If,you click first button it 		   will navigate you to the Webview. If you click second button, It will 		   displays a alert message "


  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"

  s.author       = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }

  s.platform     = :ios, "9.0"

  s.ios.deployment_target = "8.0"


  s.source       = { :git => "https://github.com/Srinivasulu3264/BeerChipFrameWork.git", :tag => "0.0.8" }


  s.source_files  = "BeerChipFrameWork", "BeerChipFrameWork/**/*.{h,m,swift}"


   s.requires_arc = true

  `echo "3.2" > .swift-version`

end
