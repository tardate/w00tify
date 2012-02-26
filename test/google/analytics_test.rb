require 'test_helper'

class GoogleAnalyticsTest < ActionView::TestCase

  test 'insert a GA link' do
    concat(ga_script('999-XXX'))
    assert_select 'script'
    assert_match /999-XXX/, response_from_page.to_s
  end

end