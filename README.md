# Initial commands for setting up a project:

Commands to run after a new project has been initializes:

    - bower install                 # generates bower_components for foundation
    - git init                      # creates an empty repository
    - git add .                     # adds all files in current directory to git
    - git commit -m "<message>"     # commits added files with a message, ex. git commit -m "initial commit" , the typical first commit
    - heroku create <name>          # creates a heroku application with name as the subdomain, ex. heroku create test produces test.herokuapp.com
    - git push heroku master        # pushes current master branch to remote repository on heroku, stages the project

Optional commands for projects:

    - bundle install                # installs gems in gemfile
    - bundle update                 # updates gems to latest compatible versions, regenerates gemfile.lock
    - bower update                  # updates bower_components to latest versions available for the foundation gem


# Single page specific information

The jquery library used is jQuery One Page Nav which can be found at https://github.com/davist11/jQuery-One-Page-Nav

With scrolloffset now removed you must offset sections with css rules, here is an example:

    - Say the navigation height is 50px, use css to target your sections or add a class to select.

      .section-offset {
        margin-top: -50px;
        padding-top: 50px;
      }

# How to finalize a build

Use Ctrl+Shift+Slash to block comment/uncomment in config.rb.

    - ex. ctrl + shift + /

These are commented out as they break staging to Heroku.

In the config.rb do the following:

    - uncomment require 'extensions/sitemap.rb'

    - uncomment activate :favicon_maker

    - uncomment activate :imageoptim

    - uncomment activate :minify_css

    - uncomment activate :minify_javascript

    - uncomment activate :sitemap_generator

    - uncomment activate :gzip

Confirm the following are correct on each pages frontmatter:

    - title

    - description

    - keywords

    - sitename

    - url

Check 'javascripts/_typekitfont.js' to confirm kit id is correct.

Check 'javascripts/_ga.js' to confirm UA-XXXXX-X code is correct.

For favicon maker to work include favicon_template.png in source directory. Ideal image size is 152x152.

Make sure to change the URL in 'extensions/sitemap.rb' to the proper live domain.