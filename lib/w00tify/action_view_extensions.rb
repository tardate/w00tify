module W00tify
  module ActionViewExtensions
    autoload :TwitterHelper,          'w00tify/twitter/twitter_helper'
    include TwitterHelper

    autoload :FacebookHelper,          'w00tify/facebook/facebook_helper'
    include FacebookHelper

    autoload :GoogleAnalyticsHelper,  'w00tify/google/analytics_helper'
    include GoogleAnalyticsHelper
    autoload :GoogleMapsHelper,       'w00tify/google/maps_helper'
    include GoogleMapsHelper

  end
end

ActionView::Base.send :include, W00tify::ActionViewExtensions
