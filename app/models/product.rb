class Product < ActiveRecord::Base
	belongs_to :sub_category

	validates :name, :price, :sub_category_id, presence: true
	validates :price, numericality: {greater_than_or_equal: 0.01}
end
