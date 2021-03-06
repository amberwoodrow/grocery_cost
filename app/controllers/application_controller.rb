class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  	return false if session[:user_id] == nil
  	User.find session[:user_id]
  end

  def user_params
		params.require(:user).permit(:id, :email, :password, :is_admin)
	end
end
