module W00tify
  module ActionViewExtensions
    autoload :TwitterHelper,        'w00tify/twitter/twitter_helper'
    autoload :GoogleHelper,        'w00tify/google/google_helper'
    include TwitterHelper
    include GoogleHelper
  end
end

ActionView::Base.send :include, W00tify::ActionViewExtensions
