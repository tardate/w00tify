module W00tify
  module ActionViewExtensions
    # This module includes twitter-related support
    #
    # Example:
    #
    #   link_to_twitter 'username'
    #
    module UservoiceHelper

      # Return uservoice script
      # * +id+ uservoice id
      def uservoice_script(id)
        return unless id
        return %(
<script type="text/javascript">
var uvOptions = {};
(function() {
var uv = document.createElement('script'); uv.type = 'text/javascript'; uv.async = true;
uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/#{id}.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(uv, s);
})();
</script>).html_safe
      end

    end
  end
end