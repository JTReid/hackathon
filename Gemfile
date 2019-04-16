source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.0'

# API/Server
gem 'puma', '~> 3.11'
gem 'grape'
gem 'grape-swagger'
gem 'grape-middleware-logger'
gem 'grape-active_model_serializers'
gem 'grape-swagger-rails', github: 'ruby-grape/grape-swagger-rails'
gem 'active_model_serializers', '~> 0.9.3'
gem 'hashie-forbidden_attributes'

# ActiveAdmin
gem 'activeadmin' # Use it Depending of the situation

# DB
gem 'pg', '>= 0.18', '< 2.0'
gem 'hookup' # This gem will sync database between git checkouts
gem 'enumerize'
gem 'ransack'
gem 'has_secure_token' # For generating user unique tokens
gem 'kaminari'
gem 'cancancan', '~> 1.10'

# Background Processing
gem 'sidekiq'
gem 'redis'
gem 'redis-namespace'

# Authentication
gem 'devise'
gem 'devise-async' # For sending devise emails on background

# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
gem 'haml-rails', '~> 1.0'
gem 'turbolinks', '~> 5'
gem 'react-rails'
gem 'formtastic-bootstrap'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# For CI Testing
gem 'rubocop', require: false
gem 'rubycritic', require: false
gem 'brakeman', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
  gem 'pry-rails'

  # This annotates models attributes after each rake db:migrate
  gem 'annotate'
  gem 'rspec-rails', '~> 3.7'
  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers'

  # For nicer error display
  gem 'better_errors'
  gem 'binding_of_caller'

  # Emails
  gem 'letter_opener_web', '~> 1.0'

  # For generate of users and fake data on tests
  gem 'faker'
  gem 'factory_bot_rails'

  gem 'yard'
  gem 'fivemat'
  gem 'capybara'
  gem 'formulaic'
  gem 'database_cleaner'

  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  gem 'simplecov-summary'

  # Deployment
  # Please follow deployment section on cratebind's playbook
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-shell', require: false
  gem 'capistrano-rails-console', require: false
  gem 'capistrano3-puma', github: "seuros/capistrano-puma", require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
