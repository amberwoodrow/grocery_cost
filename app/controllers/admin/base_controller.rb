class Admin::BaseController < AuthenticatedController
	before_action :require_admin

  def require_admin
  	unless current_user.is_admin
      flash[:error] = "Sorry, you are not authorized to access this page."
    	redirect_to profile_path
    end
	end
end