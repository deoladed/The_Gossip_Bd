class Potin < ApplicationRecord
  belongs_to :user
  has_many :comment, as: :commenteable
  has_many :like, as: :likeable
  has_and_belongs_to_many :tag
end
