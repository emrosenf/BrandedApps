# Load the rails application
require File.expand_path('../application', __FILE__)


raw_config = File.read("#{Rails.root}/config/app_config.yml")
APP_CONFIG = YAML.load(raw_config)[Rails.env].symbolize_keys!

#configatron.apn.set_default(:cert, '')
#configatron.apn.feedback.set_default(:cert, nil)

# Initialize the rails application
Appdoc::Application.initialize!
