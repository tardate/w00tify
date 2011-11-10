require 'test_helper'

class UservoiceTest < ActionView::TestCase

  test 'insert uservoice script' do
    id = '123456789'
    concat(uservoice_script(id))
    assert_select 'script'
  end

end