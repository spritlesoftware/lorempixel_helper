# LorempixelHelper

A Rails view helper for placeholder images via http://lorempixel.com

## Installation

Add this line to your application's Gemfile:

    gem 'lorempixel_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lorempixel_helper

## Usage

to get a random picture of 400 x 400 pixels

	<%= lorempixel_image_tag "400" %>

to get a random picture of 400 x 200 pixels

	<%= lorempixel_image_tag "400x200" %>

to get a random gray picture of 400 x 400 pixels

	<%= lorempixel_image_tag "400" , :type => "g"%>

to get a random picture of the any category given below:

[abstract , animals, business, cats, city, food, nightlife, fashion, people, nature, sports, technics, transport ]

	<%= lorempixel_image_tag "400", :category => "sports" %>

to get picture no. 1/10 from the sports category

	<%= lorempixel_image_tag "400", :category => "sports", :item => 1 %>

...with a custom text on the random Picture

	<%= lorempixel_image_tag "400", :category => "sports", :text => "Dummy-Text" %>

...with a custom text on the selected Picture

    <%= lorempixel_image_tag "400x200", :category => "sports", :item => 1, :text => "Dummy-Text" %>

...with a custom style

    by default It renders :class => 'lorempixel'. If you wants to override use the following

    <%= lorempixel_image_tag("400x200", :class => "test") %>

Alternatively, calling lorempixel will work as well:

	<%= lorempixel "400" %>

Testing

rspec spec/


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
