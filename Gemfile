source 'https://rubygems.org'
ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.1.9'
gem 'unicorn'

gem 'mongoid', '~> 4.0.0'

gem 'backbone-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'js-routes'
gem 'uglifier', '>= 1.3.0'

# edge version needed - contains fix for Rails 4.1+
gem 'haml_coffee_assets', git: "https://github.com/netzpirat/haml_coffee_assets"

gem 'bootstrap-sass'
gem 'sass-rails', '~> 4.0.2'

gem 'active_model_serializers'
gem 'bourbon'
gem 'devise'
gem 'gon'
gem 'haml-rails'
gem 'nokogiri'

group :test, :development do
  gem 'checker', require: false
  gem 'konacha'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'quiet_assets'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'sextant'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
end

group :production do
  gem 'rails_12factor'
end
