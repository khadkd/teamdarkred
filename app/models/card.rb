class Card < ApplicationRecord
  belongs_to :category
  has_many :stats
end
