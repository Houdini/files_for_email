# Load application configuration
require 'ostruct'
require 'yaml'

config = YAML.load_file("#{Rails.root}/config/application.yml") || {}
app_config = config['common'] || {}
app_config.update(config[Rails.env] || {})
AppConfig = OpenStruct.new app_config

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => AppConfig.mail['address'],
  :port                 => AppConfig.mail['port'],
  :domain               => AppConfig.mail['domain'],
  :user_name            => AppConfig.mail['user_name'],
  :password             => AppConfig.mail['password'],
  :authentication       => AppConfig.mail['authentication'],
  :enable_starttls_auto => AppConfig.mail['enable_starttls_auto']
}

ActionMailer::Base.default_url_options[:host] = AppConfig.host
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
