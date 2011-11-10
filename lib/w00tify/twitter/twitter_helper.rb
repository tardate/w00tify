module W00tify
  module ActionViewExtensions
    # This module includes twitter-related support
    #
    # Example:
    #
    #   link_to_twitter 'username'
    #
    module TwitterHelper

    	def link_to_twitter(item, *args, &block)
        options = args.extract_options!
        
        handle = h( (item.respond_to?(:twitter) ) ? item.twitter : item )
    		handle.sub!(/^@/,'')
    		url = "http://twitter.com/#{handle}"
    		link_to "@#{handle}", url , options unless handle.empty?
      end
      
    end
  end
end
