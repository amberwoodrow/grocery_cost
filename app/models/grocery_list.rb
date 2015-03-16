class GroceryList < ActiveRecord::Base
	belongs_to :user
	has_many :store_products
end
