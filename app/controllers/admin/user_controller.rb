class Admin::UserController < Admin::BaseController
  def index
  	@users = User.all
  end





  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params) 
  	if @user.save
  		redirect_to profile_path, :notice => "New user created."
  		# highlight user?
  	else
  		render :new, :notice => "New user could not be created."
  	end
  end




  def edit
    @user = User.find(params[:id])
  	# make a form to edit the user
  end

  def update
   	@user = User.find(params[:id])
   	@user.skip_password_validation = true
  	if @user.update_attributes(user_params)
  		redirect_to edit_admin_user_path, :notice => "User updated."
  	else
  		render :edit
  	end
  end




  def destroy
  	User.find(params[:id]).destroy
  	redirect_to admin_user_index_path
  end
end