$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'x_ray/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'x_ray'
  s.version     = XRay::VERSION.dup
  s.date        = '2016-05-13'
  s.authors     = ['Tiffany Huang']
  s.email       = 'tiffanylinghuang@gmail.com'
  s.homepage    = 'https://github.com/tiffling/x_ray'
  s.summary     = 'A gem to help display code examples'
  s.description = 'A gem to help display code examples'
  s.license     = 'MIT'
  s.require_paths = ['lib']
  s.files       = `git ls-files`.split("\n")

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'highlight'
  s.add_development_dependency 'sqlite3'
end
