source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'haml'
gem 'haml-rails'

#gem 'apn_on_rails', :git => 'https://github.com/timsu/apn_on_rails.git'

gem 'paperclip'
gem 'aws-s3', :require => 'aws/s3'

gem 'bootstrap-sass', '1.4.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'


group :development, :test do
  gem 'sqlite3'
  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :production do
  gem 'pg'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
