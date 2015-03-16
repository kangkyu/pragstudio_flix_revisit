rails new pragstudio_flix --skip-test-unit

gem uninstall rspec-rails capybara
bundle install
bundle check

rails generate rspec:install

bundle exec rspec
"just as a quick sanity check"

###1
No route matches [GET] "/movies"
uninitialized constant MoviesController
The action 'index' could not be found for MoviesController
Missing template movies/index

expected to find text "3 Movies" in ""

Update the code example to also expect the page to include three movie titles: "Movie 1", "Movie 2", and "Movie 3".

expected to find text "Movie 1" in "3 Movies"

app.movies_url
=> "http://www.example.com/movies"

###2
uninitialized constant Movie
Could not find table 'movies'
expected to find text "Iron Man"

rake db:migrate
rake db:schema:load RAILS_ENV=test

expected to find text "PG-13"
expected to find text "Tony Stark builds an armored suit to fight the throes of evil"
expected to find text "$318,412,101.00" 

###3
No route matches [GET] "/movies/1"
The action 'show' could not be found for MoviesController
Missing template movies/show
expected to find text "Superman"
undefined method `title' for nil:NilClass

