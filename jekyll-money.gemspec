# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-money/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-money"
  spec.version       = JekyllMoney::VERSION
  spec.authors       = ["Josh Habdas"]
  spec.email         = ["jhabdas@gmail.com"]

  spec.summary       = "A Jekyll plugin for dealing with money. Because we all have to at some point."
  spec.homepage      = "https://github.com/jhabdas/jekyll-money"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.3"
  spec.add_dependency "money", "~> 6.8"
  spec.add_dependency "bigdecimal", "~> 3.1.2"
  spec.add_development_dependency "bundler", "~> 2.3.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
