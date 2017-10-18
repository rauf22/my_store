class Item < ApplicationRecord
	validates :price, numericality: {greater_than: 0, allow_nil: true}
	validates :name, :price, presence: true
  
  has_and_belongs_to_many :carts
  has_many :images, as: :imageable
  	has_attached_file :image, :styles => {:small => "150x150>", :medium => "300x300>", :large => "600x600"} 
	#:url => "/assets/items/:id/:style/:basename.:extension",
	#:path => "rails_root/app/assets/items/:id/:style/:basename.:extension"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  do_not_validate_attachment_file_type :image
end
