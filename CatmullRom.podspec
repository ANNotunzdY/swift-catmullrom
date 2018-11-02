Pod::Spec.new do |spec|
    spec.name                   = 'CatmullRom'
    spec.version                = '1.0.0'
    spec.author                 = 'André Lind'
    spec.ios.deployment_target  = '8.0'
    spec.license = { :type => 'MIT'}
    spec.homepage = 'none'
    spec.source = { :git => 'https://github.com/ANNotunzdY/swift-catmullrom/' }
    spec.summary = 'A CatmullRom implementation in Swift'

    spec.source_files        = '*.swift'
end
