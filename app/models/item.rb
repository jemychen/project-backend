class Item < ApplicationRecord
    has_many :item_order
    has_many :orders, through: :item_order
end
