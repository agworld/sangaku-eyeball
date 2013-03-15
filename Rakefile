# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "sangaku-eyeball"
  gem.homepage = "http://github.com/agworld/sangaku-eyeball"
  gem.license = "MIT"
  gem.summary = "Sangaku Eyeball is a simple tool for visualising what the Sangaku gem can do."
  gem.description = "Sangaku Eyeball uses Gosu, a 2D Game Library, to display lines, polygons and so on as defined by the Sangaku gem. It allows you to draw arbitrary polygons and then locate the Pole of Inaccessibility (usually the best place to display a label) using a fast, iterative algorithm."
  gem.email = "jason.hutchens@agworld.com.au"
  gem.authors = ["Jason Hutchens"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = false
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
