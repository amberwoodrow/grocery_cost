class SessionController < AuthenticatedController
	def profile
		# has an alert thanking you for just signing up and maybe some brief tutorial messages
		# contains a calender of all grocery lists you can view, delete, and edit(maybe grocery lists should be able to 
		#	have a title as an easier reminder reference for the user?)
  end

  def settings
  end


	def logout
		session[:user_id] = nil
		redirect_to root_path, :notice => "You have logged out."
	end
end