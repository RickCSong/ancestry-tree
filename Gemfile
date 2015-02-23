source 'https://rubygems.org'

gem 'rails', '4.2'

# MODELS
gem 'pg'

# VIEWS
gem 'jbuilder'

# JAVASCRIPT
gem 'ember-cli-rails'

group :doc do
  gem 'sdoc', require: false
  gem 'yard', require: false
end

group :development do
  gem 'web-console'
end

group :development, :test do
  gem 'annotate', require: false
  gem 'factory_girl_rails'
  gem 'rubocop', require: false
  gem 'timecop'
  gem 'pry-rails'
  gem 'pry-nav'
end

group :test do
  # Don't require rspec-rails, since we don't want to use the built in tasks.
  gem 'rspec-rails', require: false
  gem 'shoulda-matchers', require: false
  gem 'spring-commands-rspec'
end
