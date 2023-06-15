Gem::Specification.new do |s|
  s.name = 'repo-test-sdk'
  s.version = '1.0.7'
  s.summary = 'this is test profile'
  s.description = 'this porfile is made to test New repositories '
  s.authors = ['SUbtain']
  s.email = ['Subtain@gmail.com']
  s.homepage = 'https://tester.com'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.1.0')
  s.add_dependency('apimatic_core', '~> 0.2.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
