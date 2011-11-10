require 'w00tify/version'
require 'action_view'
require 'w00tify/action_view_extensions/w00t_helper'

module W00tify

  # Default way to setup w00tify. Run rails generate w00tify:install
  # to create a fresh initializer with all configuration values.
  def self.setup
    yield self
  end
end
