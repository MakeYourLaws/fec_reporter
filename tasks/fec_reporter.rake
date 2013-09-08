require 'fech'
require 'fec_reporter'
require 'rspec'
require 'rspec/core/rake_task'

namespace :fec_reporter do
  
  namespace :test do
    
    desc "Run all specs."
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = 'spec/*_spec.rb'
      t.verbose = false
    end
    
    RSpec::Core::RakeTask.new(:coverage) do |t|
      t.rcov = true
      t.rcov_opts =  %w{--exclude gems\/,spec\/,features\/,seeds\/ --sort coverage}
      t.verbose = true
    end
    
  end
  
end
