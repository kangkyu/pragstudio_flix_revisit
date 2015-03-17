class Movie < ActiveRecord::Base
  def flop?
    total_gross < 50_000_000
  end
end
