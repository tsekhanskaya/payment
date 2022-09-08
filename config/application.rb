# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ExampleWithPaypal
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config_file = Rails.application.config_for(:application)
    config_file.each do |key,value|
      ENV[key] = value
    end unless config_file.nil?
  end
end
