# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-wanliu/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["kaka"]
  gem.email         = ["huxinghai1988@gmail.com"]
  gem.description   = %q{omniauth accounts }
  gem.summary       = %q{omniauth accounts}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-wanliu"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Wanliu::VERSION
  
  gem.add_dependency("omniauth-oauth", "~> 1.0")
end