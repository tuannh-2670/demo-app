source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem "config"
gem 'rails', '~> 6.0.5'
gem 'mysql2'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem "rack-cors"
gem "redis"
gem "sidekiq"

group :development, :test do
  gem "dotenv-rails"
  gem "pry-rails"
end

group :development do
  gem "bullet"
  gem "listen", "~> 3.2"
  gem "spring"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
