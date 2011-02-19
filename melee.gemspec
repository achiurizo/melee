# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "melee/version"

Gem::Specification.new do |s|
  s.name        = "melee"
  s.version     = Melee::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Arthur Chiu"]
  s.email       = ["mr.arthur.chiu@gmail.com"]
  s.homepage    = "http://thumblemonks.github.com/riot/"
  s.summary     = %q{Acceptance Test Solution for Riot}
  s.description = %q{An Acceptance Test Solution for Riot}

  s.rubyforge_project = "melee"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'riot', '~>0.12.1'
end
