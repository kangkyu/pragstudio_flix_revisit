class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50_000_000
  end

  def self.released 
    where("released_on < ?", Date.today).order("released_on desc")
  end
end
