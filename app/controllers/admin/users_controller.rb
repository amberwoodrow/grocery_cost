class Admin::UsersController < Admin::BaseController
  def index
  	@users = User.all
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params) 
  	if @user.save
  		redirect_to new_admin_user_path, :notice => "New user created."
  		# highlight user?
  	else
  		render :new, :notice => "Could not be created."
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
   	@user = User.find(params[:id])
   	@user.skip_password_validation = true
  	if @user.update_attributes(user_params)
  		redirect_to edit_admin_user_path, :notice => "User updated."
  	else
  		render :edit, :notice => "Could not be updated."
  	end
  end

  def destroy
  	User.find(params[:id]).destroy
  	redirect_to admin_user_index_path, :notice => "User deleted."
  end
end