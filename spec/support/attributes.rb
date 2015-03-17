def movie_attributes(overrides={})
  {
    title: "Superman",
    rating: "PG",
    total_gross: 134218018.00,
    description: "Clark Kent grows up to be the greatest super-hero",
    released_on: "1978-12-15"
  }.merge(overrides)
end
