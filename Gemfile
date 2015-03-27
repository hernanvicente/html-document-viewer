source "https://rubygems.org"

ruby '2.1.5'

gem 'foundation'
gem "mongoid", "~> 4.0.0"
gem 'rack-livereload'
gem 'sinatra'
gem 'sinatra-assetpack'
gem 'sinatra-contrib'
gem 'slim'
gem 'thin'

# From https://github.com/guard/listen/issues/275
gem 'listen', '2.7.11'

gem "sass", "~> 3.3.0"
gem "compass", "~> 1.0"

group :development do
  gem 'guard'
  gem 'guard-livereload', require: false
end

group :test do
  gem 'factory_girl'
  gem 'minitest'
  gem 'minitest-osx'
  gem 'rack-test'
end
