# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'atom_rails_debugger/version'

Gem::Specification.new do |spec|
  spec.name          = "atom_rails_debugger"
  spec.version       = AtomRailsDebugger::VERSION
  spec.authors       = ["Tom Kadwill"]
  spec.email         = ["tomkadwill@gmail.com"]

  spec.summary       = %q{Gem for debugging Rails in Atom}
  spec.description   = %q{Gem for debugging Rails in Github's Atom Editor}
  spec.homepage      = "http://github.com/tomkadwill/atom_rails_debugger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
