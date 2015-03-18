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

undefined method `movie_url'
rspec --format doc

###4
Unable to find link "All Movies"

###5
movies with a total gross less than $50M as flops
spec/features/show_movie_spec.rb

Failure/Error: movie = Movie.create(movie_attributes(total_gross: 10))
undefined method `flop?'

Failure/Error: expect(movie).to be_flop
       expected #<Movie:0x007fdf417d6e00> to respond to `flop?`

expected `#<Movie ...>.flop?` to return false, got true

rake db:seed
The ! version of create raises an exception if a record can't be created because it's invalid (more on that later).

create a file named date_formats.rb in the config/initializers directory and copy/paste the following:

Date::DATE_FORMATS[:default] = "%B %e, %Y"

###6
No route matches {:action=>"show", :controller=>"movies"} missing required keys: [:id]
Unable to find link "Edit"
undefined local variable or method `movie'
undefined method `edit_movie_path'
The action 'edit' could not be found for MoviesController
Missing template movies/edit

First argument in form cannot contain nil or be empty
`find_field('Title').value`
http://www.rubydoc.info/github/jnicklas/capybara/Capybara/Node/Finders:find_field
Unable to find field "Title" 

No route matches [PATCH] "/movies/1"
The action 'update' could not be found for MoviesController
Missing template movies/update

ActiveModel::ForbiddenAttributesError
`redirect_to @movie`
`redirect_to movie_url(@movie)`

###7
Unable to find link "Add New Movie"
undefined local variable or method `new_movie_path'
The action 'new' could not be found for MoviesController
Missing template movies/new

undefined local variable or method `movies'
Unable to find field "Title"
First argument in form cannot contain nil or be empty
Unable to find field "Released On"
No route matches [POST] "/movies"
The action 'create' could not be found for MoviesController
Missing template movies/create
Cannot redirect to nil!
undefined method `create' for nil:NilClass

###8
Unable to find link "Delete"
undefined local variable or method `current_link' => 'current_path'
       expected: "/movies"
            got: "/movies/1"
Couldn't find Movie with 'id'=:id
The action 'destroy' could not be found for MoviesController
Missing template movies/destroy
expected not to find text "Superman" in
undefined method `destroy' for nil:NilClass

###9
expected not to find text "Superman" in
undefined local variable or method `released_on' for #<MoviesController
SQLite3::SQLException: no such column: Time.now
http://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html

undefined method `released' for #<Class
expected #<ActiveRecord::Relation []> to include #<Movie
SQLite3::SQLException: no such column: created_at:
expect(Movie.recently_added).to eq([movie2, movie3, movie4])
Movie.released.to_sql

###10 adds more fields to the movies database table
    fill_in "Cast"
    fill_in "Director"
    fill_in "Duration"
    fill_in "Image file name"

cast director duration image_file_name
have_selector
expect(page).to have_selector("img[src$='#{movie.image_file_name}']")

Unable to find field "Cast"
undefined method `cast' for #<Movie
expected to find text "Robert Downey
expected to find css "img[src$='ironman.jpg']" but there were no matches

expected to find text "123 min" in "New Movie De

Write a Custom Image Helper - image placeholder if no image_file_name


###Layout
<footer style="text-align: center; padding: 5px; color: #237CBE; background: #F0F0F0">
<aside style="float: right; background: #F0F0F0; width: 200px;">
<header style="padding: 5px; color: #F0F0F0; background: #237CBE;">

###Stylesheets & New Design

###
requires a title
accepts a positive total gross
rejects a negative total gross
accepts properly formatted image file names
rejects improperly formatted image file names
accepts if image_file_name blank
accepts example attributes
accepts any rating on the approved list
rejects any rating not on the approved list

###
does not save the movie if invalid
does not update the movie if invalid

###
"Movie successfully updated!"
"Movie successfully created!"
"Movie successfully deleted!"

###One-to-Many Models
uninitialized constant Review
undefined local variable or method `review_attributes'
Could not find table 'reviews'

undefined method `reviews'







