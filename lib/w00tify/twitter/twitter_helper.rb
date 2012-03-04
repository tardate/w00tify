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
        handle = "#{(item.respond_to?(:twitter) ? item.twitter : item)}".sub(/^@/,'')
        url = "http://twitter.com/#{handle}"
        link_to "@#{handle}", url , options unless handle.empty?
      end

      # http://twitter.com/goodies/tweetbutton
      # * +options+ hash:
      #   - url
      #   - via
      #   - related
      #   - count
      #   - lang
      #   - text
      def tweet_button( options = {} )
        data_url = options[:url] ? "data-url=\"#{options[:url] }\"" : ""
        data_count = options[:count] ? options[:count] : "none"
        data_lang = options[:lang] ? "data-lang=\"#{options[:lang] }\"" : ""
        tweet_label = options[:text] || 'Tweet'
        return %(
<a href="http://twitter.com/share" class="twitter-share-button" #{data_url} data-count="#{data_count}" data-via="#{options[:via]}" data-related="#{options[:related]}" #{data_lang}>#{tweet_label}</a>
<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
        ).html_safe
      end

    end
  end
end
