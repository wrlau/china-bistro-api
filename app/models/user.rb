class User < ApplicationRecord
  has_many :orders
  belongs_to :current_order, class_name: "Order", foreign_key: "current_order_id"
end
