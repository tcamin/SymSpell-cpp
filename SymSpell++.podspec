Pod::Spec.new do |s|
  s.name             = 'SymSpell++'
  s.version          = '0.1.0'
  s.summary          = 'A C++ to C wrapper for a C++ SymSpell port'
  s.description      = <<-DESC
  A C++ to C wrapper for a C++ SymSpell port
                       DESC

  s.homepage         = 'https://github.com/tcamin/SymSpell-cpp'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tomas Camin' => 't.camin@gmail.com' }
  s.source           = { :git => 'https://github.com/tcamin/SymSpell-cpp.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.3'
  s.osx.deployment_target = '10.14'

  s.static_framework = true
  s.requires_arc = false
  s.source_files = 'SymSpell/**/*.{m,c,cc,cpp,hpp,h}'
  s.public_header_files = 'SymSpell/include/*.hpp'
  s.libraries = 'stdc++'
  s.pod_target_xcconfig = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
                            "CLANG_CXX_LIBRARY" => "libc++",
                            "OTHER_LDFLAGS" => "-lstdc++",
                            "OTHER_CPLUSPLUSFLAGS[arch=armv7]" => "-fno-aligned-allocation" }
end
