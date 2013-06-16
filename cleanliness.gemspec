# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cleanliness/version'

Gem::Specification.new do |gem|
  gem.name          = "cleanliness"
  gem.version       = Cleanliness::VERSION
  gem.authors       = ["Ty Rauber"]
  gem.email         = ["tyrauber@mac.com"]
  gem.description   = %q{Clean Language Validation}
  gem.summary       = %q{The Cleanliness gem is an easy way to limit offensiveness in your application by replacing bad language, hate speech and other improperness with a more tame counterpart.}
  gem.homepage      = "https://github.com/tyrauber/cleanliness"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
