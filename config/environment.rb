# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp
 # config.action_mailer.delivery_method = :letter_opener
  config.action_mailer.perform_deliveries = true

  config.action_mailer.smtp_settings = {
      address:
          "smtp.gmail.com",
      port:
          587,
      domain:
          "domain.of.sender.net",
      authentication: "plain",
      user_name:
          "ananyakazi92@gmail.com",
      password:
          "gorbhodharini",
      enable_starttls_auto: true
  }
end