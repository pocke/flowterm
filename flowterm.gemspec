# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flowterm/version"

Gem::Specification.new do |spec|
  spec.name          = "flowterm"
  spec.version       = Flowterm::VERSION
  spec.authors       = ["Masataka Kuwabara"]
  spec.email         = ["kuwabara@pocke.me"]

  spec.summary       = %q{String flows in a terminal}
  spec.description   = %q{String flows in a terminal}
  spec.homepage      = "https://github.com/pocke/flowterm"
  spec.license       = 'CC0-1.0'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
