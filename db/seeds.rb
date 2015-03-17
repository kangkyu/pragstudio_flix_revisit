# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create!([
  {
    title: "Iron Man",
    rating: "PG-13",
    total_gross: 318412101.00,
    description: "Tony Stark builds an armored suit to fight the throes of evil",
    released_on: "2008-05-02"
  },
  {
    title: "Superman",
    rating: "PG",
    total_gross: 134218018.00,
    description: "Clark Kent grows up to be the greatest super-hero",
    released_on: "1978-12-15"
  },
  {
    title: "Spider-Man",
    rating: "PG-13",
    total_gross: 403706375.00,
    description: "Peter Parker gets bit by a genetically modified spider",
    released_on: "2002-05-03"
  },
  {
    title: "Batman vs. Godzilla",
    rating: "PG-13",
    total_gross: 387623910,
    description: "The Caped Crusader battles the fire-breathing Gojira",
    released_on: 10.days.from_now
  },
  {
    title: "Catwoman",
    rating: "PG-13",
    total_gross: 40200000.00,
    description: "Patience Philips has a more than respectable career as a graphic designer",
    released_on: "2004-07-23"
  }
])

movie = Movie.find_by(title: "Iron Man")
movie.cast = "Robert Downey Jr., Gwyneth Paltrow and Terrence Howard"
movie.director = "Jon Favreau"
movie.duration = "126 min"
movie.image_file_name = "ironman.jpg"
movie.save

movie = Movie.find_by(title: "Superman")
movie.cast = "Christopher Reeve, Margot Kidder and Gene Hackman"
movie.director = "Richard Donner"
movie.duration = "143 min"
movie.image_file_name = "superman.jpg"
movie.save

movie = Movie.find_by(title: "Spider-Man")
movie.cast = "Tobey Maguire, Kirsten Dunst and Willem Dafoe"
movie.director = "Sam Raimi"
movie.duration = "121 min"
movie.image_file_name = "spiderman.jpg"
movie.save

movie = Movie.find_by(title: "Batman vs. Godzilla")
movie.cast = "Bruce Wayne, Gojira"
movie.director = "Ishiro Honda"
movie.duration = "211 min"
movie.image_file_name = "batman-vs-godzilla.jpg"
movie.save

movie = Movie.find_by(title: "Catwoman")
movie.cast = "Halle Berry, Sharon Stone and Benjamin Bratt"
movie.director = "Jean-Christophe 'Pitof' Comar"
movie.duration = "101 min"
movie.image_file_name = "catwoman.jpg"
movie.save