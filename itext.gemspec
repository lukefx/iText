# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "itext/version"

Gem::Specification.new do |s|
  s.name        = "itext"
  s.version     = Itext::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luca Simone"]
  s.email       = ["info@lucasimone.info"]
  s.homepage    = "http://github.com/lukefx"
  s.summary     = "JRuby wrapper for iText"
  s.description = "JRuby wrapper for iText"

  s.rubyforge_project = "itext"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec"

end
