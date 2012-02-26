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

$LOAD_PATH.unshift('lib')
require 'w00tify/version'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "w00tify"
  gem.version = W00tify::Version::STRING
  gem.homepage = "http://github.com/tardate/w00tify"
  gem.license = "MIT"
  gem.summary = %Q{collection of webby helpers}
  gem.description = %Q{rails 3 view helpers for services from google, facebook, twitter, uservoice ..}
  gem.email = "gallagher.paul@gmail.com"
  gem.authors = ["Paul Gallagher"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
RDoc::Task.new do |rdoc|
  rdoc.main = "README.rdoc"
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "w00tify #{W00tify::Version::STRING}"
  rdoc.rdoc_files.include("README.rdoc", "lib/**/*.rb")
end
