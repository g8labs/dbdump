# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dbdump/version'

Gem::Specification.new do |spec|
  spec.name          = "dbdump"
  spec.version       = Dbdump::VERSION
  spec.authors       = ["Martin Fernandez"]
  spec.email         = ["martin.fernandez@g8labs.co"]

  spec.summary       = %q{Database rake tasks.}
  spec.description   = %q{Simple rake tasks for dumping and restoring the database.}
  spec.homepage      = "https://github.com/g8labs/dbdump"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
