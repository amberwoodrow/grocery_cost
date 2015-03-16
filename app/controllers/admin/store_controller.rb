class Admin::StoreController < Admin::BaseController
	def index
  	@stores = Store.all
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