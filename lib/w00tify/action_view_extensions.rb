module W00tify
  module ActionViewExtensions

    autoload :FacebookHelper,          'w00tify/facebook/facebook_helper'
    include FacebookHelper

    autoload :GoogleAnalyticsHelper,  'w00tify/google/analytics_helper'
    include GoogleAnalyticsHelper
    autoload :GoogleMapsHelper,       'w00tify/google/maps_helper'
    include GoogleMapsHelper

    autoload :TwitterHelper,          'w00tify/twitter/twitter_helper'
    include TwitterHelper

    autoload :UservoiceHelper,          'w00tify/uservoice/uservoice_helper'
    include UservoiceHelper

  end
end

ActionView::Base.send :include, W00tify::ActionViewExtensions
