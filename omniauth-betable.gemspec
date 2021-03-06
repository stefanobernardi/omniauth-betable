# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-betable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth'
  gem.add_dependency 'oauth2'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'simplecov'

  gem.authors       = ["Stefano Bernardi"]
  gem.email         = ["stefano@betable.com"]
  gem.description   = %q{Betable strategy for OmniAuth.}
  gem.summary       = %q{Betable strategy for OmniAuth.}
  gem.homepage      = "https://github.com/stefanobernardi/omniauth-betable"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-betable"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Betable::VERSION
end
