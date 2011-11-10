require 'test_helper'

class FacebookTest < ActionView::TestCase
  

  test 'insert a tweet button' do
    url = 'http://tardate.com'
    concat(facebook_like(url))
    assert_select 'iframe'
  end

end