require_relative 'boot'

## Instead of requiring all
# require 'rails/all'

## require only stuff I'm actually going to use:
# require 'action_cable/engine'
require 'action_controller/railtie'
# require 'action_mailbox/engine'
# require 'action_mailer/railtie'
require 'action_text/engine'
require 'action_view/railtie'
# require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ecolidium
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
