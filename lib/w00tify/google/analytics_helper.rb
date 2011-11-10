module W00tify
  module ActionViewExtensions
    # This module includes google-related support
    #
    # Example:
    #
    #   ga_script 'username'
    #
    module GoogleAnalyticsHelper
      
      # Inserts Google Analytics script
      # * +ga_id+ - Google Analytics ID
      def ga_script(ga_id)
        return unless ga_id.present?
        return %(
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', '#{ga_id}']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>).html_safe
      end

    end
  end
end
