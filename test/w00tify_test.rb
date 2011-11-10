require 'test_helper'

class W00tifyTest < ActiveSupport::TestCase
  test 'setup block yields self' do
    W00tify.setup do |config|
      assert_equal W00tify, config
    end
  end
end