source 'https://rubygems.org'
ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#customize gem for all enviroments

gem 'jquery-turbolinks'
gem 'bootstrap-sass', '~> 3.3.4'
gem 'devise'
gem 'bcrypt', '~> 3.1.7'

# Add for upload image
gem 'carrierwave', "~> 0.10.0"
gem 'carrierwave-aws'
gem 'mini_magick'
gem "settingslogic"


#add for SEO
gem 'seo_helper', '~> 1.0', :git => 'git://github.com/techbang/seo_helper.git'
gem 'sitemap_generator'

#fb open graph
gem 'open_graph_helper', :github => 'techbang/open_graph_helper'

# pagination
gem 'will_paginate'
gem 'will_paginate-bootstrap'



# add for sidekiq
gem 'sidekiq'
gem 'sinatra', require: false
gem 'slim'


# Simpe form
gem 'simple_form', '~> 3.0.2'

# Add multiple photos
gem "nested_form"


# mailchimp
gem 'gibbon'

gem 'video_info'

gem "figaro"

# gem dalli

group :staging, :production do
  gem 'rails_12factor'
  gem 'unicorn'
  gem 'rack-timeout'

  #gem "sentry-raven", :git => "https://github.com/getsentry/raven-ruby.git"

end


group :development, :test do

    # customize gem
  gem 'pry'
  gem 'pry-rails'
  #gem 'pry-nav'   # Using MRI 2+? Switch to pry-byebug.
  gem 'pry-byebug'

  gem 'meta_request'
  gem 'better_errors'
  gem "binding_of_caller"
  gem 'guard-livereload'
  gem 'annotate'
  gem 'awesome_print', :require => false
  gem 'hirb', :require => false
  gem 'hirb-unicode', :require => false


  # Rails 4.2 offers below gem
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

