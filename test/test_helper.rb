require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'test/unit'
require 'mocha'

require 'active_model'
require 'action_controller'
require 'action_view'
require 'action_view/template'
require 'action_view/test_case'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'w00tify'

Dir["#{File.dirname(__FILE__)}/support/*.rb"].each { |f| require f }
I18n.default_locale = :en

class Test::Unit::TestCase
end

class ActionView::TestCase
  include W00tify::ActionViewExtensions::W00tHelper
end