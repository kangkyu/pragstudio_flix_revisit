rails new pragstudio_flix --skip-test-unit

gem uninstall rspec-rails capybara
bundle install
bundle check

rails generate rspec:install

bundle exec rspec
"just as a quick sanity check"

No route matches [GET] "/movies"
uninitialized constant MoviesController
The action 'index' could not be found for MoviesController
Missing template movies/index

expected to find text "3 Movies" in ""
