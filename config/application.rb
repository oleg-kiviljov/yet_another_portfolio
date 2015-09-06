require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module Portfolio
  class Application < Rails::Application
    # Mailer
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        address:              'smtp.gmail.com',
        port:                 587,
        user_name:            Figaro.env.email_address,
        password:             Figaro.env.email_password,
        authentication:       'plain',
        enable_starttls_auto: true  }
  end
end
