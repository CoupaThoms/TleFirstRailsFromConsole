source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

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

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'friendly_id', '~> 5.2.0'

gem 'devise', '~> 4.5'

gem 'jquery-rails'

gem 'bootstrap', '~> 4.1.3'

#my gem from git hub
#gem 'coupa_snake_view_tool', git: 'https://github.com/CoupaThoms/coupa_snake_view_tool'
#and here from rubygems.org
gem 'coupa_snake_view_tool', '~> 0.1.0'

gem 'petergate', '~> 2.0', '>= 2.0.1'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'

#pour pagging
gem 'kaminari', '~> 1.0', '>= 1.0.1'

gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

#Pour tout ce qui est file upload
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'mini_magick', '~> 4.9', '>= 4.9.2'
gem 'carrierwave-aws', '~> 1.3'
gem 'dotenv-rails', '~> 2.5'

#Pour les Js dans les form, mais on l'a pas vraiment use
gem 'cocoon', '~> 1.2', '>= 1.2.12'

#Pour les notifications dans l application
gem 'gritter', '~> 1.2'

gem 'twitter', '~> 6.2'

#Pour que les commentaires apparaissent en live. Le ActionCable de rails 5 l utilise c'est pour ca qu'on l'a.
gem 'redis', '~> 4.1'

# A fast, safe and extensible Markdown to (X)HTML parser
gem 'redcarpet', '~> 3.4'
#Fast and easy syntax highlighting for selected languages, written in Ruby.
gem 'coderay', '~> 1.1', '>= 1.1.2'