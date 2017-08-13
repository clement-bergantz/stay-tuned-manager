class Type < ApplicationRecord
	has_many :sources
	has_many :reviews, through: :sources
	validates :name, presence: true, uniqueness: true
end
