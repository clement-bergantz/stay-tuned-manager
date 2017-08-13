class Source < ApplicationRecord
  belongs_to :type
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
end
