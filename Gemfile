source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '~> 4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem 'nokogiri'
gem 'bootstrap-sass'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'rack-pjax'

group :development do
  gem 'sqlite3'
  gem 'puma'
  gem 'rspec-rails'
end

group :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'simplecov', :require => false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
