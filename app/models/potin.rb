class Potin < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_many :like
  has_and_belongs_to_many :tag
end
