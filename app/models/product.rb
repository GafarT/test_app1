class Product < ActiveRecord::Base
	belongs_to :sub_category

	validates :name, :price, :sub_category_id, presence: true
	validates :price, numericality: {greater_than_or_equal: 0.01}

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
