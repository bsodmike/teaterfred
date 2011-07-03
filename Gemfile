source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc"
#gem 'blueprint-rails'
gem 'coffee-script'
gem 'uglifier'
gem 'haml'
gem 'sprockets', "2.0.0.beta.10"
gem 'jquery-rails'
# End


gem 'carrierwave'

gem 'inherited_resources'

gem 'table_builder'
gem 'calendar_helper'
gem 'later_dude'

group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3'
  gem 'pg'
end

group :development do
  gem 'thin'
  gem 'eventmachine', '1.0.0.beta.3'
end

group :development, :test do
  gem 'turn', :require => false
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'cucumber'
end
