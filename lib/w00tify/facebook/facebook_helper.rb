module W00tify
  module ActionViewExtensions
    # This module includes facebook-related support
    #
    # Example:
    #
    module FacebookHelper

      # http://developers.facebook.com/docs/reference/plugins/like
      def facebook_like( url, options = {} )
        options.reverse_merge!({ :show_faces => true, :width => 450, :height => 80 })
        return %(
<iframe src="http://www.facebook.com/widgets/like.php?href=#{ u( url ) }&show_faces=#{ options[:show_faces] }&width=#{ options[:height] }&width=#{ options[:height] }"
style="border:none; width:#{ options[:width] }px; height:#{ options[:height] }px"
scrolling="no" frameborder="0"></iframe>).html_safe
      end
 
    end
  end
end
