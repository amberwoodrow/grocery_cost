class Store < ActiveRecord::Base
	has_many :products, :through => :store_products
	has_many :store_products
end
