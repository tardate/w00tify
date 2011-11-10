module W00tify
  module ActionViewExtensions
    # This module includes google maps related support
    #
    module GoogleMapsHelper
 
      # Returns google static map, hyperlinked to the google maps site
      # * +address+ text
      # * +latitude+ value
      # * +longitude+ value
      # * +options+ hash
      def google_static_map(address, latitude, longitude, options = {})
        return unless address or latitude and longitude
        options.reverse_merge!(
          :maptype => :roadmap,
          :markers => address,
          :sensor => false,
          :size => '354x100',
          :zoom => 12
        )
        options[:markers] = "size:#{options[:marker_size]}|#{options[:markers]}" if options[:marker_size]
        options.reverse_merge!(:center => "#{latitude},#{longitude}") if latitude && longitude
        prefer_ssl = options.delete(:prefer_ssl)
        base_img_url = prefer_ssl ? 'https://maps.googleapis.com/maps/api/staticmap?' : 'http://maps.google.com/maps/api/staticmap?'
        base_link_url = prefer_ssl ? 'https://maps.google.com/maps?' : 'http://maps.google.com/maps?'
        if latitude && longitude
          url = "#{base_link_url}#{address.to_query('q')}&sll=#{latitude},#{longitude}"
        else
          url = "#{base_link_url}#{address.to_query('q')}&hnear=&#{address.to_query('hq')}"
        end
        name = image_tag(base_img_url << options.to_param, :alt => address)
        link_to(name, url, options.reverse_merge!(:target => '_blank', :class => 'map') )
      end

    end
  end
end