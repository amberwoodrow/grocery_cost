class StartSessionController < UnauthenticatedController
  def index
  end

	def signin
		@user = User.new
	end

  def do_signin
  	@user = User.find_by(email: params[:user][:email])
  	if @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
			redirect_to profile_path
	  else
		  render :signin
		end
  end

	def signup
		@user = User.new
	end

	def do_signup
		@user = User.new(user_params)
		if @user.save
  		session[:user_id] = @user.id
			redirect_to profile_path
		else
			render :signup
		end
	end
end