$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'coinkite/version'

spec = Gem::Specification.new do |s|
  s.name = 'coinkite'
  s.version = Coinkite::VERSION
  s.summary = 'Ruby bindings for the Coinkite API'
  s.description = 'Coinkite is the most secure way to transact in bitcoin online. See https://coinkite.com for details.'
  s.authors = ['Ilia Lobsanov']
  s.email = ['ilia@lobsanov.com']
  s.homepage = 'https://docs.coinkite.com/api/index.html'
  s.license = 'MIT'

  s.add_dependency('rest-client', '~> 1.4')
  s.add_dependency('mime-types', '>= 1.25', '< 3.0')
  s.add_dependency('json', '~> 1.8.1')

  s.add_development_dependency('rspec')

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
end
