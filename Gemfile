source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  # Use devise as authentication
  gem 'devise'
  # Use pundit as authorization
  gem 'pundit'
  # Use jquery-rails as jquery
  gem 'jquery-rails'
  # Use responders as respond format
  gem 'responders'
  # Use rspec as test framework
  gem 'rspec-rails'
  # Use bootstrap-sass as bootstrap
  gem 'bootstrap-sass'
  # Use jquery-rails as jquery
  gem 'jquery-rails'
  # Use better_errors as errors display
  gem 'better_errors'
  # Use simplecov as code coverage
  gem 'simplecov'
  # Use friendly_id as friendly_url
  gem 'friendly_id'
  # Use rails-erd to generate ERD diagram
  gem 'rails-erd'
  # Use pry-rails as terminal
  gem 'pry-rails'
  # Use pry-byebug as debug
  gem 'pry-byebug'
  # UIse rubocop as code coverage
  gem 'rubocop'
  # Use shoulda to make test easy to read and to fingers
  gem 'shoulda'
  # Use will_paginate as paginate
  gem 'will_paginate'
  gem 'bootstrap-will_paginate'
  # Use wysiwyg-rails as html text editor
  gem 'wysiwyg-rails'
  # Use a font-awesome-rails as  awesome fonts
  gem 'font-awesome-rails'
  # Use cucumer as acceptance test
  gem 'cucumber'
  # Use guard as automation 
  gem 'guard'
  # Use ransack to automate search object based
  gem 'ransack'
  # Use sidekiq as background jobs
  gem 'sidekiq'
  # Use whenever to cronjobs
  gem 'whenever'
  # Use therubyracer to compile js 
  gem 'therubyracer'
  # Use meta_tags as SEO
  gem 'meta_tags'
  # Use brakeman as security
  gem 'brakeman'
  # Use carrierwave as uploader
  gem 'carrierwave'
  # Use recapcha as capcha
  gem 'recaptcha', require: 'recaptcha/rails'
  # Use capistrano set as deploy
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano3-puma'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
