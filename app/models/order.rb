class Order < ApplicationRecord
  #belongs_to :user
  has_many :line_items
  has_many :dishes, through: :line_items
end
