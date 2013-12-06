# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zanox/version'

Gem::Specification.new do |gem|
  gem.name          = "zanox"
  gem.version       = Zanox::VERSION
  gem.authors       = ["Krispin Schulz", "Tobias Schlottke", "Oliver Prater"]
  gem.email         = ["oliver.prater@gmail.com"]
  gem.description   = %q{The easy way to the zanox web services with ruby 1.9.}
  gem.summary       = %q{One gem to rule the zanox API.}
  gem.homepage      = "https://github.com/oliverprater/zanox"
  gem.licenses        = ["CC"]

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'term-ansicolor'
  gem.add_development_dependency 'turn'

  gem.add_runtime_dependency 'soap2r'
  gem.add_runtime_dependency 'ruby-hmac'
end
