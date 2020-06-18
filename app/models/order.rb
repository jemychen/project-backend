class Order < ApplicationRecord
  belongs_to :user
  has_many :item_order, dependent: :delete_all
  has_many :items, through: :item_order
end
