class GroceryList < ActiveRecord::Base
	belongs_to :user
	has_many :store_products
	accepts_nested_atrributes_for :store_products
end
