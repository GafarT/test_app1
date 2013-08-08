class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :products

	validates :name, :category_id, presence: true
end
