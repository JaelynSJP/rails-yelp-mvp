class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true
  validates :rating,
            numericality: true,
            inclusion: {
              in: 0..5,
              message: 'Value should be between 0 and 5'
            }
end
