require 'test_helper'

class LinkToEmailTest < ActionView::TestCase

  test 'insert a link to a username' do
    concat(link_to_email('username@example.com'))
    assert_select 'a[href=mailto:username@example.com]', {:text=>"username@example.com"}
  end

  test 'when given a nil object' do
    assert_nil link_to_email(nil)
  end

end