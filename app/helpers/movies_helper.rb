module MoviesHelper
  
  def show_total_gross(movie)
    if movie.flop?
      "flop"
    else
      number_to_currency(movie.total_gross)
    end
  end
end