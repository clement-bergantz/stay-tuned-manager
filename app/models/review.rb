class Review < ApplicationRecord
  belongs_to :source
  validates :rating, presence: true, numericality: { only_integer: true }
end
