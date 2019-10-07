source 'https://rubygems.org'

ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'high_voltage', '~> 3.0.0'
gem 'slim-rails'
gem 'contact_us', '~> 1.0.1'
gem "figaro"
gem 'bootstrap_form', '2.3.0'
#css
gem 'bootstrap-sass', '3.3.7'
gem 'sass-rails', '~> 5.0' 
gem 'devise'
gem "paperclip", "~> 6.0.0"

group :development do
  gem 'sqlite3'
end

group :production do
  gem 'sqlite3'
	gem 'rails_12factor'
	gem 'rails_serve_static_assets'
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.3", require: false
  gem 'capistrano-bundler', '~> 1.3.0', require: false
  gem "capistrano-passenger", "~> 0.2.0"
  gem 'capistrano-rvm'
  gem "capistrano-yarn"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'execjs'
  gem 'therubyracer', git: 'https://github.com/cowboyd/therubyracer.git'
end

