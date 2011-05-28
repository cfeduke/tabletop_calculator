source :rubygems

gem 'rake', '=0.8.7'

gem 'rails'
gem 'sqlite3'
gem 'recaptcha', :require => 'recaptcha/rails'
gem 'acts-as-taggable-on'

# Asset template engines
gem 'haml'
gem 'sass'
gem 'compass'
gem 'compass-susy-plugin'
gem 'compass-colors'

gem 'jquery-rails'

# administration
gem 'activeadmin'
gem 'cancan', :git => "git://github.com/ryanb/cancan.git", :branch => "2.0"

group :test do
  gem 'cucumber-rails'
  gem 'pickle'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'mocha'
  gem 'webrat'
  # http://get.qt.nokia.com/qt/source/qt-mac-opensource-4.7.3.dmg
  #gem 'capybara-webkit' #requires the qt libs installed
end

group :development do
  gem 'rails3-generators'
  gem 'nifty-generators'
  gem 'haml-rails'
  gem 'launchy'
  gem 'guard' 
  gem 'guard-rspec'
  gem 'guard-bundler'
  
  # for converting ERb views to Haml (the one true way...)
  gem 'hpricot'
  gem 'ruby_parser'
  
  gem 'spork', '~> 0.9.0.rc'
  gem 'terminitor'
  
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent'
    gem 'growl' # also install growlnotify from the Extras/growlnotify/growlnotify.pkg in Growl disk image
  end
end
