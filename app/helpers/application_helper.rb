module ApplicationHelper

  def show_total_gross(movie)
    if movie.total_gross < 50_000_000
      "flop"
    else
      number_to_currency(movie.total_gross)
    end
  end
end
