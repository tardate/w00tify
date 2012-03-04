require 'test_helper'

class LinkToWebsiteTest < ActionView::TestCase

  test 'insert a link to a fqdn' do
    concat(link_to_website('https://example.com'))
    assert_select 'a[href=https://example.com]', {:text=>"example.com"}
  end

  test 'insert a link to an abbreviated dn' do
    concat(link_to_website('example.com'))
    assert_select 'a[href=http://example.com]', {:text=>"example.com"}
  end

  test 'when given a nil object' do
    assert_nil link_to_website(nil)
  end

end