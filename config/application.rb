require_relative "boot"
require 'apartment/elevators/subdomain'
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CompanyProject
  class Application < Rails::Application
    config.middleware.use Apartment::Elevators::Subdomain

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.middleware.use Apartment::Elevators::Subdomain
    # Configuration for the application, engines, and railties goes here.

    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    config.hosts.clear
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
