# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fec_reporter/version"

Gem::Specification.new do |s|
  s.name        = "fec_reporter"
  s.version     = FecReporter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Linda Brown Westrick"]
  s.email       = ["linda.westrick@gmail.com"]
  s.homepage    = "http://github.com/MakeYourLaws/fec_reporter"
  s.summary     = %q{Ruby library for creating FEC filings.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "fech"
  s.add_development_dependency "byebug"
  s.add_development_dependency "rake", "0.8.7"
  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "mocha"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rdoc"
end
