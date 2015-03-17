class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50_000_000
  end

  scope :released, -> { where("released_on < ?", Date.today).order("released_on desc") }
  scope :recently_added, -> { order('created_at desc').limit(3) }
end
