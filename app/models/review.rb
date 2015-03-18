class Review < ActiveRecord::Base
  belongs_to :movie

  validates :name, presence: true
  validates :stars, presence: true
  validates :comment, presence: true

  validates :stars, inclusion: { in: 1..5,
  message: "must be between 1 and 5" }
end