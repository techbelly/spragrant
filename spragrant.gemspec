# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spragrant/version"

Gem::Specification.new do |s|
  s.name        = "spragrant"
  s.version     = Spragrant::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ben Griffiths"]
  s.email       = ["bengriffiths@gmail.com"]
  s.homepage    = "http://github.com/techbelly/spragrant"
  s.summary     = %q{Vagrant extension to provision with sprinkle}
  s.description = %q{Vagrant extension to provision with sprinkle}

  s.add_dependency "sprinkle"
  s.add_dependency "vagrant", "~> 0.7.0"
  s.add_dependency "json"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
