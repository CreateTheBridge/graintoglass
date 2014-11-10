# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

gem 'middleman'
gem 'middleman-livereload'
gem 'middleman-minify-html', :git => 'https://github.com/middleman/middleman-minify-html.git'
gem 'middleman-imageoptim'
gem 'middleman-favicon-maker'
gem 'middleman-autoprefixer'
gem 'sitemap_generator'
gem 'puma'
gem 'rake'

group :darwin do
  gem 'rb-fsevent', require: false
end

group :linux do
  gem 'rb-inotify', require: false
end