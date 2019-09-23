class OrderSerializer < ActiveModel::Serializer
  attributes :user_id
  has_many :dishes
end
