def movie_attributes(overrides={})
  {
    title: "Superman",
    rating: "PG",
    total_gross: 134218018.00,
    description: "Clark Kent grows up to be the greatest super-hero",
    released_on: "1978-12-15",
    cast: "Robert Downey Jr., Gwyneth Paltrow and Terrence Howard",
    director: "Jon Favreau",
    duration: "126 min",
    image_file_name: "ironman.jpg"
  }.merge(overrides)
end

def review_attributes(overrides={})
  {
    name: "John",
    comment: "This movie I like.",
    stars: 3
  }.merge(overrides)
end
