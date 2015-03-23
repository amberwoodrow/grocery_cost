class Admin::BaseController < AuthenticatedController
	before_action :require_admin

  def require_admin
  	unless current_user.is_admin
      flash[:error] = "Sorry, you are not authorized to access this page."
    	redirect_to profile_path
    end
	end

	def store_params
		params.require(:store).permit(:id, :name) #, :address)
	end

	def product_params
		params.require(:product).permit(:id, :name)
	end

	def grocery_list_params
		params.require(:store).permit(:id, :body) #, :date
	end

	def store_product_params
		params.require(:store).permit(:id, :name) #, :cost)
	end
end