class UnauthenticatedController < ApplicationController
  before_action :require_logged_out

	def require_logged_out
		if session[:user_id] != nil
			redirect_to profile_path
		end
	end
end