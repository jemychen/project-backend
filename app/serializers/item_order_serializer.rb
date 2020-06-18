class ItemOrderSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :order_id
  belongs_to :item

  
end
