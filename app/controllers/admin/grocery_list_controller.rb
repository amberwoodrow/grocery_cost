class Admin::GroceryListController < Admin::BaseController
	def index
  	@grocery_lists = GroceryList.all
  end
  
  def new
  end

  def do_new
  end

  def edit
  end

  def do_edit
  end

  def destroy
  end
end