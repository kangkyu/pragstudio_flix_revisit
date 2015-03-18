class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50_000_000
  end

  scope :released, -> { where("released_on < ?", Date.today).order("released_on desc") }
  scope :recently_added, -> { order('created_at desc').limit(3) }

  # validates_presence_of :title
  validates :title, presence: true
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  validates :image_file_name, allow_blank: true, format: {
    with: /\w+.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }
  RATINGS = %w[G PG PG-13 R NC-17]
  validates :rating, inclusion: { in: RATINGS }
  validates :description, presence: true
  validates :released_on, presence: true
  validates :duration, presence: true

  has_many :reviews, dependent: :destroy
end
