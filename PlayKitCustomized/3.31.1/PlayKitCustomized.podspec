
Pod::Spec.new do |s|

s.name              = 'PlayKitCustomized'
s.version           = '3.31.1'
s.summary           = 'PlayKit: Kaltura Mobile Player SDK - iOS'
s.homepage          = 'https://github.com/aldisa546/PlayKitCustomized'
s.license           = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author            = { 'Kaltura' => 'community@kaltura.com' }
s.source            = { :git => 'https://github.com/aldisa546/PlayKitCustomized.git', :tag => 'v' + s.version.to_s }
s.swift_version     = '5.0'

s.ios.deployment_target = '15.0'

s.subspec 'Core' do |sp|
    sp.source_files = 'Classes/**/*'
    sp.dependency 'kSwiftyJSON', '5.0.8'
    sp.dependency 'XCGLogger', '7.1.5'
    sp.dependency 'KalturaNetKit', '~> 1.7.0'
    sp.dependency 'PlayKitUtils', '~> 0.7'
end

s.default_subspec = 'Core'

end
