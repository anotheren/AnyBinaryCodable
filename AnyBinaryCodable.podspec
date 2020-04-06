Pod::Spec.new do |s|
    s.name = 'AnyBinaryCodable'
    s.version = '1.0.0'
    s.license = 'MIT'
    s.summary = 'AnyBinaryCodable is a toolbox for encode/decode type to binary'
    s.homepage = 'https://github.com/anotheren/AnyBinaryCodable'
    s.authors = {
        'anotheren' => 'liudong.edward@gmail.com',
    }
    s.source = { :git => 'https://github.com/anotheren/AnyBinaryCodable.git', :tag => s.version }
    s.ios.deployment_target = '13.0'
    s.swift_versions = ['5.2']
    s.frameworks = 'Foundation'
    s.source_files = 'Sources/AnyBinaryCodable/**/*.swift'
end

