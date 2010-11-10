require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Crowdfunding
  class Application < Rails::Application
    config.action_view.javascript_expansions[:defaults] = %w()
    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, :fixture => false, :views => false
    end
    config.encoding = "utf-8"
  end
end

