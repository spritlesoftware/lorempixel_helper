module LorempixelHelper
  class Railtie < Rails::Railtie
    initializer "lorempixel_helper.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
