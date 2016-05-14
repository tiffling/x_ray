$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'x_ray/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'x-ray'
  s.version     = XRay::VERSION
  s.authors     = ['Tiffany Huang']
  s.email       = 'tiffanylinghuang@gmail.com'
  s.homepage    = 'https://github.com/tiffling/x-ray'
  s.summary     = 'TODO: Summary of XRay.'
  s.description = 'TODO: Description of XRay.'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split("\n")

  s.add_dependency 'rails', '~> 4.2.6'

  s.add_development_dependency 'sqlite3'
end
