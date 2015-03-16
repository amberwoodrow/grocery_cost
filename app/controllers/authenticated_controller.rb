class AuthenticatedController < ApplicationController
	before_action :require_login

  def require_login
  	if session[:user_id] == nil
    	flash[:error] = "Please login to access this page."
    	redirect_to signin_path
    end
	end
end