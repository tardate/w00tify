require 'test_helper'

class GoogleMapsTest < ActionView::TestCase

  test 'inserts linked image tag' do
    concat(google_static_map('address',100,30))
    assert_select 'a > img'
  end

end