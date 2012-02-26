source "http://rubygems.org"

gem "rails", "> 3.0.0"

group :development do
  gem 'bundler', '~> 1.0.0'
  gem 'jeweler', '~> 1.6.4'
  gem 'rdoc', '~> 3.11'
end

group :test do
  gem "mocha", :require => false

  if RUBY_VERSION < "1.9"
    gem "ruby-debug", :require => false
  else
    gem "test-unit", :require => false
  end
end

group :development, :test do
  gem 'rake', '~> 0.9.2.2'
end