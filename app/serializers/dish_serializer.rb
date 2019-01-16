class DishSerializer < ActiveModel::Serializer
  attributes :name, :price, :description
  belongs_to :category
end
