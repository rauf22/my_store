class Item < ApplicationRecord
	validates :price, numericality: {greater_than: 0, allow_nil: true}
	validates :name, :price, presence: true
  
  has_and_belongs_to_many :carts
end
