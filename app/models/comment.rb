class Comment < ApplicationRecord
	belongs_to :user
	has_many :like, as: :likeable
	belongs_to :commenteable, polymorphic: true
  has_many :comment, as: :commenteable
end
