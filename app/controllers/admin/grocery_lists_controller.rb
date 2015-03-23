class Admin::GroceryListsController < Admin::BaseController
	def index
  	@grocery_lists = GroceryList.all
  end
  
  def new
    @grocery_list = GroceryList.new
  end

  def create
    @grocery_list = GroceryList.new(grocery_list_params)
    if @grocery_lists.save
      redirect_to new_admin_grocery_lists_path, :notice => "New product created."
    else
      render :new, :notice => "Could not be created."
    end
  end

  def edit
    @grocery_list = GroceryList.find(params[:id])
  end

  def update
    @grocery_list = GroceryList.find(params[:id])
    if @grocery_lists.update_attributes(grocery_list_params)
      redirect_to edit_admin_grocery_lists_path, :notice => "Grocery list updated."
    else
      render :edit, :notice => "Could not be updated."
    end
  end

  def destroy
    GroceryList.find(params[:id]).destroy
    redirect_to admin_grocery_lists_path, :notice => "Grocery list deleted."
  end
end