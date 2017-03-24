class Category < ApplicationRecord
    has_many :cards
    validates :title, presence: true,
                    length: { minimum: 3 }
end
