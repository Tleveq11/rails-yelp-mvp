class Review < ApplicationRecord
  RATING = (0..5)
  belong_to :restaurant

  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }
end
