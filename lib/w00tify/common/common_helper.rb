module W00tify
  module ActionViewExtensions
    # This module includes twitter-related support
    #
    # Example:
    #
    #   link_to_email 'email'
    #
    module CommonHelper

      # TODO: handle block
      def link_to_email(item, *args, &block)
        options = args.extract_options!
        handle = item && case
        when item.respond_to?(:mail)
          item.mail
        when item.respond_to?(:email)
          item.email
        when item.respond_to?(:to_s)
          item.to_s
        when item.is_a?(String)
          item
        end
        return unless handle.present?
        url = "mailto:#{handle}"
        link_to handle, url, options
      end

      # give it user object or plain url to create link
      # TODO: handle block
      def link_to_website(item, *args, &block)
        options = args.extract_options!
        handle = item && case
        when item.respond_to?(:website)
          item.website
        when item.respond_to?(:web)
          item.web
        when item.respond_to?(:url)
          item.url
        when item.respond_to?(:to_s)
          item.to_s
        when item.is_a?(String)
          item
        end
        return unless handle.present?
        url = (handle =~ /^http/i) ? handle : "http://#{handle}"
        site_name = options.delete( :site_name ) || url.sub(/^http[s]?:\/\//,'')
        link_to site_name, url, options
      end

    end
  end
end
