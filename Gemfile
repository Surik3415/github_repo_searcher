# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.0.2'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'foreman', '~> 0.87.2'
gem 'graphql', '~> 2.1'
gem 'httparty', '~> 0.21.0'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rack-cors', '~> 2.0'
gem 'rails', '~> 7.1.2'
gem 'redis', '>= 4.0.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'dotenv-rails', '~> 2.8'
  gem 'jslint_on_rails', '~> 1.1'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rubocop-rails', '~> 2.22'
  gem 'rubocop-rspec', '~> 2.25'
end

group :development do
  gem 'graphiql-rails'
  gem 'web-console'
end

group :test do
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-graphql_matchers', '~> 2.0.pre.rc.0'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.3'
  gem 'simplecov', '~> 0.22.0'
  gem 'vcr', '~> 6.2'
  gem 'webmock', '~> 3.19'
end
