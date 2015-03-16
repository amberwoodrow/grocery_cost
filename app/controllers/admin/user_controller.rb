class Admin::UserController < Admin::BaseController
  def index
  	@users = User.all
  end

  def edit
  	# find user selected
  	# make a form to edit the user
  end

  def do_edit
  	# post the update
  	# redirect to admin page with message saying user was successfully updated
  end

  def destroy
  	  User.find(params[:id]).destroy
  	  redirect_to admin_user_index_path
  end
end