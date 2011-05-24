source :rubygems

gem 'rake', '=0.8.7'

gem 'rails'
gem 'sqlite3'

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
  gem 'guard-rspec' # run `guard init rspec` to create Guardfile
  
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent'
    gem 'growl'
  end
end
