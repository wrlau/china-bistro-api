class Dish < ApplicationRecord
  belongs_to :category
  has_many :line_items
end
