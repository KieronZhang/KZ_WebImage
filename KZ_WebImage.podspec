
Pod::Spec.new do |s|

    s.name = 'KZ_WebImage'
    s.version = '0.1.3'
    s.summary = 'iOS & macOS Web Image.'
    s.homepage = 'https://github.com/KieronZhang/KZ_WebImage'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang' => 'https://github.com/KieronZhang'}

    s.source = {:git => 'https://github.com/KieronZhang/KZ_WebImage.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.requires_arc = true

    s.ios.frameworks = 'Foundation', 'UIKit'
    s.osx.frameworks = 'Foundation', 'AppKit'

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'

    s.ios.vendored_frameworks = 'KZ_WebImage/KZ_WebImage_iOS.framework'
    s.osx.vendored_frameworks = 'KZ_WebImage/KZ_WebImage_macOS.framework'

end
