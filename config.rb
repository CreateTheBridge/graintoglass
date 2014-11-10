#require 'extensions/sitemap.rb'


###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

compass_config do |config|
  # Require any additional compass plugins here.
  config.add_import_path 'bower_components/foundation/scss'
  config.http_path = '/'
  config.css_dir = 'stylesheets'
  config.sass_dir = 'stylesheets'
  config.images_dir = 'images'
  config.javascripts_dir = 'javascripts'

  # You can select your preferred output style here (can be overridden via the command line):
  # output_style = :expanded or :nested or :compact or :compressed

  # To enable relative paths to assets via compass helper functions. Uncomment:
  # relative_assets = true

  # To disable debugging comments that display the original location of your selectors. Uncomment:
  # line_comments = false


  # If you prefer the indented syntax, you might want to regenerate this
  # project again passing --syntax sass, or you can uncomment this:
  # preferred_syntax = :sass
  # and then run:
  # sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
# page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
# @which_fake_page = "Rendering a fake page with a variable"
# end

sprockets.append_path 'bower_components/foundation/js'
sprockets.append_path 'bower_components/modernizr'
sprockets.append_path 'bower_components/jquery/dist'


set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'


activate :livereload

configure :build do

  # activate :favicon_maker, :icons => {
  #     'favicon_template.png' => [
  #         { icon: "apple-touch-icon-152x152-precomposed.png" },
  #         { icon: "apple-touch-icon-144x144-precomposed.png" },
  #         { icon: "apple-touch-icon-120x120-precomposed.png" },
  #         { icon: "apple-touch-icon-114x114-precomposed.png" },
  #         { icon: "apple-touch-icon-76x76-precomposed.png" },
  #         { icon: "apple-touch-icon-72x72-precomposed.png" },
  #         { icon: "apple-touch-icon-60x60-precomposed.png" },
  #         { icon: "apple-touch-icon-57x57-precomposed.png" },
  #         { icon: "apple-touch-icon-precomposed.png", size: "57x57" },
  #         { icon: "apple-touch-icon.png", size: "57x57" },
  #         { icon: "favicon-196x196.png" },
  #         { icon: "favicon-160x160.png" },
  #         { icon: "favicon-96x96.png" },
  #         { icon: "favicon-32x32.png" },
  #         { icon: "favicon-16x16.png" },
  #         { icon: "favicon.png", size: "16x16" },
  #         { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
  #         { icon: "mstile-144x144", format: "png" },
  #     ]
  # }

    
  #activate :minify_html, :remove_input_attributes => false
  
  #activate :minify_css
  
  #activate :minify_javascript
  
  activate :relative_assets
  
  #activate :sitemap_generator

  #activate :autoprefixer

  #activate :gzip

  #activate :automatic_image_sizes

  # Enable cache buster
  # activate :cache_buster
  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

