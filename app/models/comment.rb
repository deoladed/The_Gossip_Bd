class Comment < ApplicationRecord
	belongs_to :potin
	belongs_to :user
	has_many :like, as: :likeable
end
