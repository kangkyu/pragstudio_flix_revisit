rails new pragstudio_flix --skip-test-unit

gem uninstall rspec-rails capybara
bundle install
bundle check

rails generate rspec:install

bundle exec rspec
"just as a quick sanity check"

