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

Update the code example to also expect the page to include three movie titles: "Movie 1", "Movie 2", and "Movie 3".

expected to find text "Movie 1" in "3 Movies"

app.movies_url
=> "http://www.example.com/movies"


