class Source < ApplicationRecord
  belongs_to :type
  has_many :reviews
end
