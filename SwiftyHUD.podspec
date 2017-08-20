
Pod::Spec.new do |spec|
  spec.name             = 'SwiftyHUD'
  spec.version          = '0.0.1'
  spec.summary          = 'HUD (head-up display)'

  spec.homepage         = 'https://github.com/Decybel07/SwiftyHUD'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Adrian Bobrowski' => 'adrian071993@gmail.com' }
  spec.source           = { :git => "https://github.com/Decybel07/SwiftyHUD.git", :tag => spec.version }

  spec.ios.deployment_target = '9.0'
  spec.watchos.deployment_target = '2.0'
  spec.tvos.deployment_target = '9.0'
  spec.osx.deployment_target = '10.10'
  
  spec.subspec 'Core' do |core|
    core.source_files = 'Source/Core/Base/**/*.swift'
    
    core.ios.framework  = 'UIKit'
    core.ios.source_files = 'Source/Core/UIKit/{Common,iOS}/**/*.swift'
    
    core.watchos.framework  = 'WatchKit'
    core.watchos.source_files = 'Source/Core/WatchKit/**/*.swift'
    
    core.tvos.framework  = 'UIKit'
    core.tvos.source_files = 'Source/Core/UIKit/{Common,tvOS}/**/*.swift'
    
    core.osx.framework  = 'Cocoa'
    core.osx.source_files = 'Source/Core/Cocoa/**/*.swift'
  end
  
  spec.subspec 'Progress' do |progress|
    progress.dependency 'SwiftyHUD/Core'
    progress.source_files = 'Source/Progress/**/*.swift'
  end

  spec.subspec 'Toast' do |toast|
    toast.dependency 'SwiftyHUD/Core'
    toast.source_files = 'Source/Toast/**/*.swift'
  end
  
end
