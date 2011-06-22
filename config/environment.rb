# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Socialink::Application.initialize!

# App config
APP_CONFIG=YAML.load_file("#{RAILS_ROOT}/config/appconfig.yml")
