require "lorempixel_helper/version"

module LorempixelHelper
  module ViewHelpers
  def lorempixel_image_tag(size, opts={})
			size = "#{size.to_s}" unless size.is_a?(String)
      		config = {
		        :alt => (opts[:text] || "A lorempixel image"),
		        :height => (size.split('x')[1] || size.split('x')[0]),
		        :width => size.split('x')[0],
		        :item => opts[:item],
		        :text => opts[:text].to_s.gsub(/\s+/, "-"),
		        :title => opts[:text] || "A lorempixel image",
		        :category => opts[:category],
		        :type => opts[:type],
            :class => opts[:class]
		      }.merge!(opts)

		      src = "http://lorempixel.com/#{config[:width]}/#{config[:height]}"
          style = 'lorempixel'
          style = config[:class] if config[:class]
		      # lorempixel  option

		      if config[:type]
		      	src = "http://lorempixel.com/#{config[:type]}/#{config[:width]}/#{config[:height]}"
		      end

		      if config[:category]
		      	src += "/#{config[:category]}"
		        if config[:item]
		        	src += "/#{config[:item]}"
		        	if config[:text]
		        		src += "/#{config[:text]}"
		        	end
		        elsif config[:text]
		        	src += "/#{config[:text]}"
		        end
		     end


		      image_tag = "<img src='#{src}' alt='#{config[:alt]}' height='#{config[:height]}' width='#{config[:width]}'"
		      image_tag += " title='#{config[:title]}'"
		      image_tag += " class='#{style}' />"
		      return image_tag.html_safe if defined?(Rails)
		      image_tag
		end

		alias :lorempixel :lorempixel_image_tag

	end
end

require "lorempixel_helper/railtie" if defined?(Rails)