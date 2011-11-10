module W00tify
  module ActionViewExtensions
    autoload :TwitterHelper,        'w00tify/twitter/twitter_helper'
    include TwitterHelper
  end
end

ActionView::Base.send :include, W00tify::ActionViewExtensions
