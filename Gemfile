source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Asset template engines
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-script'
  gem 'uglifier'
end

gem 'haml'
gem 'jquery-rails'
# End
gem 'carrierwave'

gem 'RedCloth'

group :production do
  gem 'therubyracer-heroku'
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
