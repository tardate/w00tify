require 'test_helper'

class TwitterTest < ActionView::TestCase

  test 'insert a link to a username' do
    concat(link_to_twitter('username'))
    assert_select 'a[href=http://twitter.com/username]', {:text=>"@username"}
  end

  test 'insert a link to a qualified username' do
    concat(link_to_twitter('@username'))
    assert_select 'a[href=http://twitter.com/username]', {:text=>"@username"}
  end

end