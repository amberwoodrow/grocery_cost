class StoreProductsController < AuthenticatedController
	def grocery_list
		# @grocery_list = GroceryList.new
	end

	def do_grocery_list
		# @grocery_list = GroceryList.create(grocery_list_params)
		# redirect_to profile_path
	end

	def grocery_list_params
		# params.require(:grocery_list).permit(if this is a then :title, :body)
	end
end