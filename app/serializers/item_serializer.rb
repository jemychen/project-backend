class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :category

  # has_many :item_order
  
  # has_many :orders, through: :item_order

end
